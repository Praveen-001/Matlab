% creating scalar variable and performing operations on it.
x=100;
y=10;
z=x+y; % addition
fprintf('sum of %d + %d = %d\n',x,y,z);
z=x-y; % substraction
fprintf('substration of %d - %d = %d\n',x,y,z);
z=x*y; % multiplication
fprintf('multiplication of %d * %d = %d\n',x,y,z);
z=x/y; % right division
fprintf('right division of %d/%d = %d\n',x,y,z);
z=x\y; % left division
fprintf('left division of %d\\%d = %d\n',x,y,z);
z=x^2; % power
fprintf('power of %d^%d = %d\n',x,2,z);

% predefined functions use on scalars
disp(ceil(x));
disp(floor(x));
disp(sqrt(x));
disp(exp(y));