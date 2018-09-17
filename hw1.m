% Homework 1
clc

fc = 6.3e9;     % Freq                          [Hz]
R = 4e7;        % Distance between stations     [m]
c = 3e8;        % Speed of light                [m/s]

% TRANSMITTER
Pout = 10*log10(0.6);      % Max output power transmitter  [dBW]
dT = 0.45;       % Diameter of reflector antenna [m]
nT = 0.7;        % Aperture efficiency


% RECEIVER A
dA = 3;         % Diameter of reflector antenna [m]
nA = 0.65;      % Aperture efficiency


% RECEIVER B 
dB = 7;         % Diameter of reflector antenna [m]
nB = 0.5;       % Aperture efficiency


%% TASK 1. Gain in dBi
clc

G_T = 10*log10(nT * (pi*dT*fc/c)^2)
HPBW_T = (70*c)/(dT*fc)

G_A = 10*log10(nA * (pi*dA*fc/c)^2)
HPBW_A = (70*c)/(dA*fc)

G_B = 10*log10(nB * (pi*dB*fc/c)^2)  
HPBW_B = (70*c)/(dB*fc)

%% TASK 2. Flux density in Wm^-2
clc

G_edge = G_T - 3;
% a) Full power 
F_full = Pout + G_edge - 10*log10(4*pi*R^2)
% F_full = 10^(F_full/10)

% b) 3dB output back off 
F_half = (Pout-3) + G_edge - 10*log10(4*pi*R^2)
% F_half = 10^(F_half/10)

%% TASK 3. Free space path loss in dB
clc

% Increasing fc to 14.1GHz increases the path loss by 7dB
L_FS1 = 10*log10((4*pi*R*fc/c)^2)
L_FS2 = 10*log10((4*pi*R*14.1e9/c)^2)

%% TASK 4. Power in dBW
clc
% a) Full power
Pr_Afull = (Pout + G_T + G_A - L_FS1)
Pr_Bfull = (Pout + G_T + G_B - L_FS1)

% b) 6db output back off
Pr_A = (Pout - 6 + G_T + G_A - L_FS1)
Pr_B = (Pout - 6 + G_T + G_B - L_FS1)


%% TASK 5. 
clc

CN0 = 70; % dBHz

k = 10*log10(1.3806e-23); % Boltzmann constant 

T_A = Pout + G_T - L_FS1 + G_A - k - CN0
T_B = Pout + G_T - L_FS1 + G_B - k - CN0














