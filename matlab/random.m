% Random Number Sequence Generation and Plotting

% Parameters
n = 100; % Number of random numbers to generate
x = 1:n; % X-axis values (1 to n)

% Generate random numbers
random_numbers = rand(1, n); % Generate n random numbers between 0 and 1

% Plotting
figure;
plot(x, random_numbers, 'b-', 'LineWidth', 2);
xlabel('Index');
ylabel('Random Number');
title('Line Graph of Random Numbers');
grid on;

% Optional: Display the first few random numbers in the command window
disp('First few random numbers:');
disp(random_numbers(1:10));
