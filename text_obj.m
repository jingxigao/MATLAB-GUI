%text对象----axes的子对象
figure;
hf=axes;
ht=text(1,1,'示例');
get(ht);
%公式编辑
text('String','\int_0^x dF(x)','position',[0.5 0.5]);
