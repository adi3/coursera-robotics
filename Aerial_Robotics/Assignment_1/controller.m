function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

zdot2_des = 0;
e = s_des(1) - s(1);
edot = -s(2);
Kp = 80;
Kv = 10;
u = params.mass * (zdot2_des + Kp*e + Kv*edot + params.gravity);

% FILL IN YOUR CODE HERE


end

