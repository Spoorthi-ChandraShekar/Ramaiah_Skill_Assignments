% Projectile Motion Simulation

% Parameters
v0 = 50; % Initial velocity in m/s
theta = 45; % Launch angle in degrees
g = 9.81; % Acceleration due to gravity in m/s^2

% Convert angle to radians
theta_rad = deg2rad(theta);

% Calculate time of flight
t_flight = (2 * v0 * sin(theta_rad)) / g;

% Time vector
t = linspace(0, t_flight, 100);

% Calculate x and y positions
x = v0 * cos(theta_rad) * t;
y = v0 * sin(theta_rad) * t - 0.5 * g * t.^2;

% Calculate range and maximum height
range = x(end);
max_height = (v0^2 * (sin(theta_rad))^2) / (2 * g);

% Plot trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

% Plot range and maximum height
plot(range, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Range');
plot(0, max_height, 'go', 'MarkerSize', 8, 'DisplayName', 'Max Height');

% Labels and title
xlabel('Distance (m)');
ylabel('Height (m)');
title('Projectile Motion');
grid on;
legend show;
axis equal;

% Display results
fprintf('Range: %.2f m\n', range);
fprintf('Max Height: %.2f m\n', max_height);
