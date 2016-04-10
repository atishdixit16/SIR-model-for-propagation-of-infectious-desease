function[mat] = euler_method(h, t_init, S_init, I_init, R_init, n) 

t = t_init;
S = S_init;
I = I_init;
R = R_init;

for i=2:n
    S(i) = S(i-1) + h*diff_funct1(S(i-1),I(i-1),R(i-1));
    I(i) = I(i-1) + h*diff_funct2(S(i-1),I(i-1),R(i-1));
    R(i) = R(i-1) + h*diff_funct3(S(i-1),I(i-1),R(i-1));
end

plot(t,S,t,I,t,R);
legend('susceptible','infected','recovered')

print('output','-dpng')

mat=[S;I;R];

end
