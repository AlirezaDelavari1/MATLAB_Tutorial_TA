clc, clearvars

%Vectors
rowVec1 = [1, 2, 3, 4, 5]
rowVec2 = [1 2 3 4 5]
rowVec3 = [1 2  , 3   4     5]

colVec = [1; 2; 3; 4; 5]


%Vector Operations
A = [1, 2, 3]
B = [4, 5, 6]

C = A + B

D = A - B

E = A .* B %Element-wise multiplication

F = A ./ B %Element-wise division

scalar = 3;
result = scalar * A

%Generating Vectors

%Colon Operator
%Syntax: start:step:end
vec1 = 1:5     
vec2 = 0:2:10    
vec3 = 5:-1:1

X = 1:5
%Transpose of a Vector
X_transposed = X'

%linspace Function
%Syntax: linspace(start, end, number_of_points)
vec4 = linspace(1, 10, 5)

Y = linspace(1,100)
Y2 = linspace(1,100,4)




%Matrices

%Creating Matrices
matrixA = [1, 2, 3; 4, 5, 6] %a 2x3 matrix

%Special Matrices
zerosMatrix = zeros(3, 3)
onesMatrix = ones(2, 4)
identityMatrix = eye(4)
randomMatrix = rand(3, 2)

%Matrix Operations
A2 = [1, 2; 3, 4]
B2 = [5, 6; 7, 8]

C2 = A2 + B2
D2 = A2 - B2

%Element-wise Multiplication
E2 = A2 .* B2

%Matrix Multiplication
F2 = A2 * B2

%Transpose of a Matrix
G = A2'

R = [1 2 3 4; 5 6 7 8; 9 10 11 12]
K = R'
P = R * K
p2=K * R


L = [1 2; 3 4]
L2 = L^3
L3 = L.^3

L4 = inv(L)


%Indexing

%Vector Indexing
V = [10, 20, 30, 40, 50]
firstElement = V(1)
thirdElement = V(3)
LastElement1 = V(end)
LastElement2 = V(end-1)

%Modifying elements
V(2) = 25


%Matrix Indexing
M = [1, 2, 3; 4, 5, 6; 7, 8, 9]
element = M(2, 3)       %2nd row, 3rd column

secondRow = M(2, :)
thirdColumn = M(:, 3)
LastElement = M(end)
M2 = M(2, :)
M3 = M(2, 1:2)

%Modifying elements
M(1, 2) = 10


%Slicing and Subsetting
subMatrix = M(1:2, 2:3) %Extracts rows 1-2, columns 2-3

%Logical Indexing
A3 = [5, 8, 3, 10, 2];
logicalIndex = A3 > 4;  %[true, true, false, true, false]
selectedElements = A3(logicalIndex)




%Built-in Functions for Vectors and Matrices

%Common Vector Functions
vec2 = [3, 7, 2, 9]

maxVal = max(vec2)    
minVal = min(vec2)
sumVal = sum(vec2)
meanVal = mean(vec2)
lengthVal = length(vec2)

%Common Matrix Functions
matrixB = [1, 4; 2, 5; 3, 6]

sizeB = size(matrixB)
determinant = det(eye(3))
matrixTranspose = matrixB'
