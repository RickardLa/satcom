%% Homework 3 
clc, clear, close

latitude = -90;             % [degrees]
h = 800;                    % Orbital height [km]
r_earth = 6378.14;          % Earth's mean radius [km]
HPBW = 10;                  % Half-power beam-width [degrees]

mu = 3.986004418e5;         % [km^3/s^2]

minElevation = 15;          % [degrees]
r = h + r_earth;            % [km]


% 1 and 2
v = sqrt(mu/r);             % Linear velocity  [km/s]
w = v/r;                    % Angular velocity [rad/s]


% 3 
% y_v = acosd((r_earth/r) * cosd(minElevation)) - minElevation




d = r_earth*cosd(90+minElevation) + sqrt((r_earth^2)*cosd(90+minElevation)^2 - r_earth^2 + r^2)

