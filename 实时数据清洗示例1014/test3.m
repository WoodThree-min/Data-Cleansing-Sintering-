cla

load ys
load pos
ys(20) = 240; ys(22)=260;
%ys(2)=-1000;
%ys([14,15,16,17])=140;

Y1 = ys(2:28);
U1 = pre_process(Y1, pos);

plot(1:27, Y1, 'o-'); hold on; plot(1:27, U1, '*-'); grid on;grid minor

%%
load Y1
load pos
U1 = pre_process(Y1, pos);

plot(1:27, Y1, 'o-'); hold on; plot(1:27, U1, '*-'); grid on;grid minor


