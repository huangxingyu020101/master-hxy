all_msg=a_msg; %所有可能的信号
all_msg_gf=gf(all_msg,3); %将所有的信号映射到GF域
all_code_msg=rs_rscode(all_msg_gf) ; %对所有的信号进行RS编码，得到所有正确的编码
msg=rand(5,3);
msg=floor(msg*8) %产生随机的5组信号
MSG=gf(msg,3); %将产生的5组信号映射到GF域
code=rs_rscode(MSG) %对5组信号进行编码，得到5组正确的RS码
a=zeros(5,5);
b=floor(rand(5,2)*8);
noise=[a,b];
NOISE=gf(noise,3); %产生噪声信号
in_msg=code+NOISE %加噪
for ii = 1:5 %对5组信号进行译码
new_msg(ii,:) = rs_rrscode(in_msg(ii,:),all_code_msg,all_msg);
end
new_msg%译码输出
num_same = same(msg,new_msg); %译码正确个数
num =num_same/15 %译码正确率