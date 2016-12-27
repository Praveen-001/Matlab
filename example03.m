% vector creation and performing operations on them
% note: here comma or space can be used in vector creation
v=[1,2,3,4,5,6,7,8]; % row vector creation
z=[1;2;3;4;5;6;7;9]; % column vector creation
h=linspace(0,1,100); % creates row vector between range from 0 to 1 containing 100 numbers
k = 1:1:100; % creates row vector from 1...100 with step range=1
disp('V row vector');
disp(v);
disp('Z column vector');
disp(z);
disp('h row vector');
disp(h);
disp('k row vector');
disp(k);

% on this vectors, we can perform element wise operations
disp(v.^2);
disp(v.*2);
disp(v./2);
disp(v.\2);
disp(v+2);
disp(v-2);
disp(['size of v: ',num2str(size(v)),'  length of v: ',num2str(length(v))]);

% performing overall operations on vectors
disp(sum(v));
disp(max(v));
disp(min(v));
disp(mean(v));
disp(median(v));
disp(prod(v));