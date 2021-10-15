package scheforstat

import (
	"context"
	"fmt"
	v1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/klog"
	framework "k8s.io/kubernetes/pkg/scheduler/framework/v1alpha1"
)

type ScheForStatPlugin struct {}

var (
	_ framework.PreBindPlugin = &ScheForStatPlugin{}
)

const (
	Name = "ScheForStat"
)

func (s ScheForStatPlugin) Name() string {
	return Name
}

func (s ScheForStatPlugin) PreBind(ctx context.Context, state *framework.CycleState, pod *v1.Pod, nodeName string) *framework.Status {
	if pod == nil {
		return framework.NewStatus(framework.Error, fmt.Sprintf("pod cannot be nil"))
	}

	if pod.Namespace == "foo" {
		klog.V(3).Infof("pod %v from 'foo' namespace is not allowed", pod.Name)
		return framework.NewStatus(framework.Unschedulable, "pods from 'foo' namespace are not allowed" )
	}

	klog.V(3).Infof("pod %v from '%v' namespace allowed", pod.Name, pod.Namespace)
	return nil
}

func New(_ *runtime.Unknown, _ framework.FrameworkHandle) (framework.Plugin, error) {
	return &ScheForStatPlugin{}, nil
}
