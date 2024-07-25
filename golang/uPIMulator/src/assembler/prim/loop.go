package prim

import (
	"uPIMulator/src/abi/encoding"
	"uPIMulator/src/misc"
)

type Loop struct {
}

func (host *Loop) Init(command_line_parser *misc.CommandLineParser) {
}

func (host *Loop) InputDpuHost(execution int, dpu_id int) map[string]*encoding.ByteStream {
	return make(map[string]*encoding.ByteStream, 0)
}

func (host *Loop) OutputDpuHost(execution int, dpu_id int) map[string]*encoding.ByteStream {
	return make(map[string]*encoding.ByteStream, 0)
}

func (host *Loop) InputDpuMramHeapPointerName(execution int, dpu_id int) (int64, *encoding.ByteStream) {
	return 0, new(encoding.ByteStream)
}

func (host *Loop) OutputDpuMramHeapPointerName(execution int, dpu_id int) (int64, *encoding.ByteStream) {
	return 0, new(encoding.ByteStream)
}

func (host *Loop) NumExecutions() int {
	return 1
}
