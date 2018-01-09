clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sahebeh Dadboud = 1569395
% Sheet 3 - Exe 1
%Compare the QR method with eig function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


M = gallery ("lehmer" , 5) % Symmetric 

%apply QR method
for i=1:100; %number of iteration
    [Q,R] = qr(M);
    M=R*Q; 
end

e = eig (M);
