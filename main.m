all_msg=a_msg; %���п��ܵ��ź�
all_msg_gf=gf(all_msg,3); %�����е��ź�ӳ�䵽GF��
all_code_msg=rs_rscode(all_msg_gf) ; %�����е��źŽ���RS���룬�õ�������ȷ�ı���
msg=rand(5,3);
msg=floor(msg*8) %���������5���ź�
MSG=gf(msg,3); %��������5���ź�ӳ�䵽GF��
code=rs_rscode(MSG) %��5���źŽ��б��룬�õ�5����ȷ��RS��
a=zeros(5,5);
b=floor(rand(5,2)*8);
noise=[a,b];
NOISE=gf(noise,3); %���������ź�
in_msg=code+NOISE %����
for ii = 1:5 %��5���źŽ�������
new_msg(ii,:) = rs_rrscode(in_msg(ii,:),all_code_msg,all_msg);
end
new_msg%�������
num_same = same(msg,new_msg); %������ȷ����
num =num_same/15 %������ȷ��