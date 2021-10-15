module github.com/wm775825/scheduler-for-statistics

go 1.15

require (
	k8s.io/api v0.18.3
	k8s.io/apimachinery v0.18.3
	k8s.io/component-base v0.18.3
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.18.3
)


replace (
	k8s.io/api => k8s.io/api v0.18.3
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.18.3
	k8s.io/apimachinery => k8s.io/apimachinery v0.18.3
	k8s.io/apiserver => k8s.io/apiserver v0.18.3
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.18.3
	k8s.io/client-go => k8s.io/client-go v0.18.3
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.18.3
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.18.3
	k8s.io/code-generator => k8s.io/code-generator v0.18.3
	k8s.io/component-base => k8s.io/component-base v0.18.3
	k8s.io/component-helpers => k8s.io/component-helpers v0.18.3
	k8s.io/controller-manager => k8s.io/controller-manager v0.18.3
	k8s.io/cri-api => k8s.io/cri-api v0.18.3
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.18.3
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.18.3
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.18.3
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.18.3
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.18.3
	k8s.io/kubectl => k8s.io/kubectl v0.18.3
	k8s.io/kubelet => k8s.io/kubelet v0.18.3
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.18.3
	k8s.io/metrics => k8s.io/metrics v0.18.3
	k8s.io/mount-utils => k8s.io/mount-utils v0.18.3
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.18.3
	k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.18.3
	k8s.io/sample-controller => k8s.io/sample-controller v0.18.3
)

// 也可以将上述代码重定向到本地文件
// 这样避免重新下载，缺点就是移植性差
//replace (
//	k8s.io/kubernetes => D:\Codes\go_path\src\kubernetes-1.18.3
//
//	k8s.io/api => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\api
//	k8s.io/apiextensions-apiserver => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\apiextensions-apiserver
//	k8s.io/apimachinery => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\apimachinery
//	k8s.io/apiserver => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\apiserver
//	k8s.io/cli-runtime => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\cli-runtime
//	k8s.io/client-go => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\client-go
//	k8s.io/cloud-provider => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\cloud-provider
//	k8s.io/cluster-bootstrap => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\cluster-bootstrap
//	k8s.io/code-generator => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\code-generator
//	k8s.io/component-base => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\component-base
//	k8s.io/cri-api => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\cri-api
//	k8s.io/csi-translation-lib => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\csi-translation-lib
//	k8s.io/kube-aggregator => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kube-aggregator
//	k8s.io/kube-controller-manager => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kube-controller-manager
//	k8s.io/kube-proxy => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kube-proxy
//	k8s.io/kube-scheduler => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kube-scheduler
//	k8s.io/kubectl => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kubectl
//	k8s.io/kubelet => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\kubelet
//	k8s.io/legacy-cloud-providers => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\legacy-cloud-providers
//	k8s.io/metrics => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\metrics
//	k8s.io/sample-apiserver => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\sample-apiserver
//	k8s.io/sample-cli-plugin => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\sample-cli-plugin
//	k8s.io/sample-controller => D:\Codes\go_path\src\kubernetes-1.18.3\staging\src\k8s.io\sample-controller
//)
