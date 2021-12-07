function interpret_msg=rs_interpret(in_msg,all_code_msg,all_msg)
for i=1:512
rs_dis(i)=rscode_dis(in_msg,all_code_msg(i,:));
end
rs_dis_min =min(rs_dis);
index = find(rs_dis == rs_dis_min);
interpret_msg = all_msg(index(1),:);
return;
end