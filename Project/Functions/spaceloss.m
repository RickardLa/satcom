function loss = spaceloss(R, f, flag)
%UNTITLED6 Summary of this function goes here

c = 3e8; 
if nargin == 2
    flag = 'db'; 
end


switch flag
    case 'db'
        loss = 10*log10((4*pi*R*f/c)^2);
    case 'lin'
        loss = (4*pi*R*f/c)^2;
        
end
end

