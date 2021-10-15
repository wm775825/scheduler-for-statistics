package main

import (
	"fmt"
	"github.com/wm775825/scheduler-for-statistics/pkg/register"
	"k8s.io/apimachinery/pkg/util/rand"
	"k8s.io/component-base/logs"
	"os"
	"time"
)

func main() {
	rand.Seed(time.Now().UTC().UnixNano())
	command := register.Register()

	logs.InitLogs()
	defer logs.FlushLogs()

	if err := command.Execute(); err != nil {
		_, _ = fmt.Fprintf(os.Stderr, "%v\n", err)
		os.Exit(1)
	}
}
