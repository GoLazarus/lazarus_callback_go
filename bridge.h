#ifndef BRIDGE_H_
#define BRIDGE_H_

typedef int (*intFunc) (int);

void
bridge_int_func(intFunc f,int reval);

#endif