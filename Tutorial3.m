clc, clearvars

%Conditional Statements

%The if Statement
%Syntax:
% if condition
%     % Code to execute if the condition is true
% end

x = 10;
ans1 = x > 10
ans2 = x == 10
if x > 5
    disp('x is greater than 5');
end

%The if-else Statement
%Syntax:
% if condition
%     % Code to execute if the condition is true
% else
%     % Code to execute if the condition is false
% end

temperature = 15;
if temperature > 20
    disp('It is warm outside');
else
    disp('It is cold outside');
end

%The if-elseif-else Statement
%Syntax:
% if condition1
%     % Code to execute if condition1 is true
% elseif condition2
%     % Code to execute if condition2 is true
% elseif condition3
%     % Code to execute if condition3 is true
% else
%     % Code to execute if none of the above conditions are true
% end

grade = 87;
if grade >= 90
    disp('Grade: A');
elseif grade >= 80
    disp('Grade: B');
elseif grade >= 70
    disp('Grade: C');
else
    disp('Grade: F');
end

%The switch Statement
%Syntax:
% switch variable
%     case value1
%         % Code to execute if variable == value1
%     case value2
%         % Code to execute if variable == value2
%     otherwise
%         % Code to execute if none of the cases match
% end

day = 'Tuesday';
switch day
    case 'Monday'
        disp('Start of the week');
    case 'Friday'
        disp('End of the work week');
    otherwise
        disp('Midweek day');
end

%Logical Operators in Conditions
%Example with AND:
a1 = 5;
b1 = 10;
if a1 > 0 && b1 > 0
    disp('Both a1 and b1 are positive');
end

%Example with OR:
a2 = -3;
b2 = 7;
if a2 > 0 || b2 > 0
    disp('At least one of a2 or b2 is positive');
end

%Other:
a3 = -3;
if a3 == -3
    disp('a3 is -3');
end

b3 = 7;
if b3 ~= 5
    disp('b3 is NOT 5');
end

%Nested Conditional Statements
x = 8;
if x > 0
    if mod(x, 2) == 0
        disp('x is a positive even number');
    else
        disp('x is a positive odd number');
    end
else
    disp('x is non-positive');
end





