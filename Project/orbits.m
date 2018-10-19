%%
clc, clear

mu = 3.986004418e5; 
r_earth = 6378.137; 
r_LEO = 750; 
r = r_earth + r_LEO


v_earth = 1674.4/(60^2);     % km/s

v = sqrt(mu/r);              % km/s
T = (2*pi*r/v)/60;           % minutes



theta = 24.96;                      % Rotation of Earth during 1 orbital period of satellite
L_arc = (theta*pi*r_earth)/180 