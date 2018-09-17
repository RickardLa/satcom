%% Testing functions
clc, clear 
n = 0.7;
D = 0.45;
f = 6.3e9; 
Pt = 0.6;
R = 4e7;

G = Gmax(n, D, f)

theta3db = HPBW(f, D)

gaindir = Gdir(0, G, theta3db)

flux = fluxdensity(Pt, gaindir, R)
loss = spaceloss(R, f)
