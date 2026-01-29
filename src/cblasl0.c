#include<cblasl0.h>

#include<stdio.h>
#include<stdlib.h>

#include<malloc.h>


const size_t algSize=64;

float *salloc(const int size)
{
	if (size>0)
	{
		float *r=NULL;
		if (posix_memalign((void **)&r, algSize, size*sizeof(float)) == 0)
			return r;
	}
	return NULL;
}

double *dalloc(const int size)
{
	if (size>0)
	{
		double *r=NULL;
		if (posix_memalign((void **)&r, algSize, size*sizeof(double)) == 0)
			return r;
	}
	return NULL;
}

void sinit(const int size, float *x, float val, float incv)
{
	for (int i=0; i<size; ++i)
	{
		x[i] = val;
		val = val + incv;
	}
}
void dinit(const int size, double *x, double val, float incv)
{
	for (int i=0; i<size; ++i)
	{
		x[i] = val;
		val = val + incv;
	}
}


void sdump(const int size, float *x)
{
	printf("[ ");
	for (int i=0; i<size-1; ++i)
	{
		printf("%4.3f, ", x[i]);
	}
	printf("%4.3f ]\n",x[size-1]);
}

void ddump(const int size, double *x)
{
	printf("[ ");
	for (int i=0; i<size-1; ++i)
	{
		printf("%4.4lf, ", x[i]);
	}
	printf("%4.4lf ]\n",x[size-1]);
}

void sfree(float *x)
{
	free(x);
}
void dfree(double *x)
{
	free(x);
}
