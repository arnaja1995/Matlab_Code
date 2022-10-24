%% Matlab Code for an Electrical Circuit, written by Arnaja Mitra %%
%% Write a function called voltage that computes the voltages at junctions A, B and C. See the attached image of a passive electrical circuit. R1 denotes the fisrt componet of the vector R and so on. 

%% Solution: Write down three equations for node A,B,C using Kirchhoff's first law and rearrange it to form a linear systems of equations. 

function output=voltage(V,R)
A=[R(2)*R(7)+R(1)*R(2)+R(1)*R(7), -R(1)*R(2), 0; -R(3)*R(4)*R(8), R(4)*R(7)*R(8)+R(3)*R(4)*R(8)+R(3)*R(7)*R(8)+R(3)*R(4)*R(7), -R(3)*R(4)*R(7); 0, -R(5)*R(6), R(6)*R(8)+R(5)*R(6)+R(5)*R(8)];
b=V*[R(2)*R(7); R(4)*R(7)*R(8); R(6)*R(8)];
output=A\b;
end