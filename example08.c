/*
 * mex interface file example
 */
#include "mex.h"

/*
 * Row vector Multiplication with scalar
 */
void example08(int x,double *y,double *z,mwSize n)
{
    mwSize i;
    for(i=0;i<n;i++)
    {
        z[i]=x*y[i];
    }
}

/*
 * Gate Way function for mex file
 */
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    /** number of columns in row vector */
    mwSize ncols;
    /** declaring variables for input arguments */
    double *inMatrix; /** 1xN matrix */
    double multiplier; /** scalar */
    /** declaring output arguments */
    double *outMatrix;
    
    
    /** error checking for number of input arguments */
    if(nrhs != 2)
    {
        mexErrMsgIdAndTxt("Error Message","scalar Multiplication");
    }
    
    /** error checking for number of output arguments */
    if(nlhs != 1)
    {
        mexErrMsgIdAndTxt("Error Message2","Matrix Error");
    }
    
    /** multiplier argument validation using prhs[0] value */
    if(!mxIsDouble(prhs[0]) || mxIsComplex(prhs[0]) || mxGetNumberOfElements(prhs[0]) != 1)
    {
        mexErrMsgIdAndTxt("Error Message3","Matrix Error3");    
    }
    
    /** validating prhs[1] argument's type */
    if(!mxIsDouble(prhs[1]) || mxIsComplex(prhs[1]))
    {
        mexErrMsgIdAndTxt("Error Message4","Matrixt Error4");
    }
    
    /** validating prhs[1] is a row vector */
    if(mxGetM(prhs[1]) != 1)
    {
        mexErrMsgIdAndTxt("Error Message5","Matrix Error5");
    }
    
    multiplier = mxGetScalar(prhs[0]);
    inMatrix = mxGetPr(prhs[1]);
    ncols = mxGetN(prhs[1]);
    
    plhs[0] = mxCreateDoubleMatrix(1,ncols,mxREAL);
    outMatrix = mxGetPr(plhs[0]);
    
    /** calling computational routine */
    example08(multiplier,inMatrix,outMatrix,ncols);
}