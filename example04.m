% this file will tell you that how to create a matrix and performing
% operations on it.
v=[1,2,3;4,5,6;7,8,9];
z=[1,2,3;4,5,6;7,8,9];
disp(v);
disp(size(v)); % produces output size of matrix v
disp(size(v,1)); % produces output number of rows of matrix v
disp(size(v,2)); % produces output number of cols of matrix v

%operations on matrix 
% matrix multiplication,addition,substraction,determinant,inverse,eigen
% values and eigen vectors
disp(v*z);
disp(v+z);
disp(v-z);
disp(det(v));
disp(prod(v));
[k,x]=eig(v);
disp(k);
disp(x);
disp(pinv(v));