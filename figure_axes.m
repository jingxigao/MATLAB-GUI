%常用对象的属性
%1.fugure

hf=figure;
get(hf);
%改变颜色

set(hf,'NumberTitle','off','Name','演示','color','w','menubar','none');
pause(3);
set(hf,'Visible','off');
pause(3);
set(hf,'Visible','on');
%设置按钮，点击后关闭窗口
hb=uicontrol('Style','PushButton',...
                            'callback','closereq' );

%2.axes
figure
ha=axes;
% get(ha)
set(ha,'color','green','nextplot','add');
plot([0:100]);
plot(sin([0:100]));