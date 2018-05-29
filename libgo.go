package main

// #cgo LDFLAGS:-L"." -lbridge
// #include "bridge.h"
// typedef int (*intFunc) (int);
import "C"
import (
	"fmt"
)

func main() {
}

//export CallBackFunc
func CallBackFunc(parm C.int, ifc C.intFunc) {
	fmt.Println("C Parm=", parm)
	reval := parm + 10
	C.bridge_int_func(ifc, reval)
}
