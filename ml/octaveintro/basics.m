%%%%%%%%%%%%%%%%%%%%
% Basic operations %
%%%%%%%%%%%%%%%%%%%%

% Initialize random matrices A and B 
A = [1,2;4,5]
B = [1,1;0,2]

% Initialize a 2 by 2 identity matrix
I = eye(2)

% The above notation is the same as I = [1,0;0,1]

% What happens when we multiply I*A ? 
IA = I*A 

% How about A*I ? 
AI = A*I 

% Compute A*B 
AB = A*B 

% Is it equal to B*A? 
BA = B*A 

% Initialize matrix A 
A = [1,2,0;0,5,6;7,0,9]

% Transpose A 
A_trans = A' 

% Take the inverse of A 
A_inv = inv(A)

% What is A^(-1)*A? 
A_invA = inv(A)*A

% not equal1 
1 ~= 2

% display decimasls 
a = pi;
disp(sprintf('2 decimals: %0.2f', a))

help eye 

%%%%%%%%%%%%%%%%%%%%%%%%
% Vectors and matrices %
%%%%%%%%%%%%%%%%%%%%%%%%

A = [1 2; 3 4; 5 6]
v = [1 2 3]
% column vector 
v = [1; 2; 3]
v = 1:0.1:2
ones(2, 3)
W = zeros(1, 3)
W = rand(1, 3)
# normal variable 
W = rand(1, 3)
W = -6 + sqrt(10) * rand(1, 10000);
I = eye(4)
sz = size(A)

% nrows and cols 
size(A, 1)
size(A, 2

# length gives the size of the longest dimension 


%%%%%%%%%%%%%%%%%%%%%%
% Moving around data %
%%%%%%%%%%%%%%%%%%%%%%
pwd
# cd '/honme ... '
# ls
# load featuresX.data
# load priceY.dat 

# variables in memory 
who

# detailed view 
whos

# remove a variables 
clear(sz)

# remove all variables 
clear 

# save data 
v = priceY(1:10)
save hello.mat v;

# save in human readable format 
save hello.txt v -ascii

% manipulate data 
 A = [1 2; 3 4; 5 6]
 A(3, 2)
 A(2, :)
 A(:, 2)
 A([1 3], :)
 A(:,2) = [10; 11; 12]
 A = [A, [100; 101; 102]] % append a column vector 
 A(:) % make a column vector from all elements of A 
A = [1 2; 3 4; 5 6]
B = [11 12; 13 14; 15 16]
C = [A B] % Concatenate matrices
C = [A ; B] % on top of each other 

 
%%%%%%%%%%%%%%%%%%%%%
% Computing on data %
%%%%%%%%%%%%%%%%%%%%%
A = [1 2; 3 4; 5 6]
B = [11 12; 13 14; 15 16]
C = [1 1: 2 2]
% multiply matrices 
A*C
#% element-wise operations
A .* B
v <- [1; 2; 3]
abs(v)
log(v)
-v
v + ones(length(v), 1)
% transpose A 
A'

% IMPORTANT: for matrices max is column wise 
a = [1 15 2 0.5];
val = max(a)
[val, ind] = max(a) % gets the index as well
a < 3 ; % element-wise comparison 
find(a < 3); % indices of elements < 3
sum(a) 
prod(a)
floor(a)
ceil(a)

A = magic(3) % all rows, columns and diagonals add up to the same thing 
[r, c] = find(A >= 7) % returns row and columns indices 
max(A, [], 1) % column wise max, same as max(A)
max(A, [], 2) % row wise max 
max(max(A)) or max(A(:))
sum(A, 1) % per column 
sum(A, 2) % per row 
A = magic(9)
sum(sum(A .* eye(9))) % diagonal 1
% inverse of a matrix 
pinv(A)

max(rand(3), rand(3)) % element-wise maximum 


%%%%%%%%%%%%%%%
% Visualition %
%%%%%%%%%%%%%%%
t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t, y1);
y2 = cos(2*pi*4*t);
hold on;
plot(t, y2, 'r');
xlabel('time');
ylabel('val');
legend('sin', 'cos');
title('my plot');
print -dpng 'myplot.png';
close % remove figure 
figure(1);  plot(t, y1);
subplot(1, 2, 1); %divides plot 1x2 grid and access first 
plot(t, y1);
subplot(1, 2, 2);
plot(t, y2);
axis([0.5 1 -1 1]);
clf; %clears a figure
A  = magic(5);
imagesc(A); 
imagesc(A), colorbar, colormap gray; 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Constrol statements and functions %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
v = zeros(10, 1)
for i = 1:10,
  v(i) = 2^i;
 end;
 
 indices = 1:10;
 for i = indices,
   v(i) = 2*i;
 end;
 
 i = 1;
 while i <= 5, 
   v(i) = 100;
   i  = i + 1;
 end;
 
 i = 1;
 while true, 
   v(i) = 999;
   i = i + 1;
   if i == 6, 
      break;
   end;
 end;
 
 if v(1) == 1, 
   disp('The value is 1');
 elseif v(1) == 2,
   disp('The values is 2');
  else
  disp('Other');
 end;
 
 % add a directory to path 
addpath('')

% theta and delta are an n+1 vector 

delta = 1/m *sum_1m(h(xi) - y1)*xi
theta = theta - alpha*delta 




















 
 
 
 
 