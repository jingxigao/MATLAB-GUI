%���ö��������
%1.fugure

hf=figure;
get(hf);
%�ı���ɫ

set(hf,'NumberTitle','off','Name','��ʾ','color','w','menubar','none');
pause(3);
set(hf,'Visible','off');
pause(3);
set(hf,'Visible','on');
%���ð�ť�������رմ���
hb=uicontrol('Style','PushButton',...
                            'callback','closereq' );

%2.axes
figure
ha=axes;
% get(ha)
set(ha,'color','green','nextplot','add');
plot([0:100]);
plot(sin([0:100]));