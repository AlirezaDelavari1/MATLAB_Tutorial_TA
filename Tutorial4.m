clc, clearvars

%Loops

%The for Loop
%Syntax:
% for index = startValue:endValue
%     % Code to execute in each iteration
% end

for i = 1:5
    fprintf('Iteration: %d\n', i);
end

%Looping Over Arrays and Matrices
numbers = [2, 4, 6, 8];
for i = numbers
    fprintf('Current number: %d\n', i);
end

%Nested `for` Loop
for i = 1:3
    for j = 1:2
        fprintf('i = %d, j = %d\n', i, j);
    end
end
disp('--------')
for i = 1:3
    for j = 1:2
        disp(['i = ', num2str(i), ', j = ', num2str(j)]);
    end
end


%Summing Elements of a Matrix
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12];
sumTotal = 0;
size(A, 1) %returns the number of rows in matrix A
size(A, 2) %returns the number of columns in matrix A
for i = 1:size(A, 1)
    for j = 1:size(A, 2)
        sumTotal = sumTotal + A(i, j);
    end
end
fprintf('Sum of all elements: %d\n', sumTotal);
disp(['Sum of all elements: ', num2str(sumTotal)]);

%Looping with a Step Size
for i = 1:2:10  %Start at 1, increment by 2, stop at 10
    fprintf('i = %d\n', i);
end



%The while Loop
%Syntax:
% while condition
%     % Code to execute as long as the condition is true
% end

count = 1;
while count <= 3
    fprintf('Count: %d\n', count);
    count = count + 1;
end

%Infinite Loop (Do Not Run!!!!!)
%DO NOT RUN !!!

% %This loop will run forever
% % while true
% %     disp('This is an infinite loop');
% % end


%Controlling Loop Execution
%The break Statement
for i = 1:10
    if i == 5
        disp('Breaking out of the loop');
        fprintf('Breaking out of the loop');
        fprintf('Breaking out of the loop\n');
        fprintf('Breaking out of the loop\n');
        break;
    end
    fprintf('i = %d\n', i);
end

%The continue Statement
for i = 1:5
    if i == 3
        continue; % Skip the iteration when i is 3
    end
    fprintf('i = %d\n', i);
end


%Example
%Factorial Calculation
n = 5;
factorial = 1;
for i = 1:n
    factorial = factorial * i;
end
fprintf('Factorial of %d is: %d\n', n, factorial);
disp(['Factorial of ', num2str(n), ' is: ', num2str(factorial)]);

