package register

import (
	"github.com/spf13/cobra"
	"github.com/wm775825/scheduler-for-statistics/pkg/scheforstat"
	"k8s.io/kubernetes/cmd/kube-scheduler/app"
)

func Register() *cobra.Command {
	return app.NewSchedulerCommand(
		app.WithPlugin(scheforstat.Name, scheforstat.New),
	)
}
