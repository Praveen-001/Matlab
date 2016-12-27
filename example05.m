% creation of different matrix using standard functions
z = rand(5); % it creates 5X5 matrix with random values of range [0,1]
disp(z);
z = eye(5);    % it creates 5X5 identity matrix
disp(z);
z = zeros(5); % itcretes 5X5 matrix with all entries initialized with 0's
disp(z);

z = ones(5);
disp(z);

z = randi([1,10],5);
disp(z);