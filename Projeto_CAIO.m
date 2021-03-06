 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Hidrodinamica em Meios Porosos                                          %
% Atividade: solucao da pressao para alguns regimes de fluxo              %
% Caio Morais de Almeida                                                  %
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Dados de revisao:
%   Data        Programador     Realato de mudanca
%   ====        ===========     ==================   
%   13/09       Caio Morais     Criacao
%   18/09       Caio Morais     Criacao da GUI
%   18/09       Caio Morais     Definicao de variaveis 
%   19/11       Caio Morais     Programacao das Funcoes



function varargout = Projeto_CAIO(varargin)
% PROJETO_CAIO MATLAB code for Projeto_CAIO.fig
%      PROJETO_CAIO, by itself, creates a new PROJETO_CAIO or raises the existing
%      singleton*.
%
%      H = PROJETO_CAIO returns the handle to a new PROJETO_CAIO or the handle to
%      the existing singleton*.
%
%      PROJETO_CAIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJETO_CAIO.M with the given input arguments.
%
%      PROJETO_CAIO('Property','Value',...) creates a new PROJETO_CAIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Projeto_CAIO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Projeto_CAIO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Projeto_CAIO

% Last Modified by GUIDE v2.5 30-Nov-2018 19:05:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Projeto_CAIO_OpeningFcn, ...
                   'gui_OutputFcn',  @Projeto_CAIO_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Projeto_CAIO is made visible.
function Projeto_CAIO_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Projeto_CAIO (see VARARGIN)

% Choose default command line output for Projeto_CAIO
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Projeto_CAIO wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Projeto_CAIO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


     
% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Programacao         

    % Escolha do Sistema de Unidadades de ENTRADA (SI) %
        
        if 1 == get(handles.popupmenu2,'Value')
            
            L = str2double(get(handles.edit1,'String')); %COMPRIMENTO
            A = str2double(get(handles.edit2,'String')); %AREA
            phi = str2double(get(handles.edit3,'String')); %POROSIDADE
            k = str2double(get(handles.edit4,'String')); %PERMEABILIDADE
            u = str2double(get(handles.edit5,'String')); %VISCOSIDADE
            Ct = str2double(get(handles.edit6,'String')); %COMPRESSIBILIDADE
            Pw = str2double(get(handles.edit7,'String')); %PRESSAO NO POCO
            Pe = str2double(get(handles.edit8,'String')); %PRESSAO EXTERNA
            rw = str2double(get(handles.edit9,'String')); %RAIO DO POCO
            re = str2double(get(handles.edit10,'String')); %RAIO EXTERNO
            h = str2double(get(handles.edit11,'String')); %ESPESSURA
            t = str2double(get(handles.edit12,'String')); %TEMPO
            q = str2double(get(handles.edit13,'String')); %VAZAO
            eta = k/ (phi * u * Ct); 
            tempo_inicial = 0 ;
            n = L/11 ;
            m = re/11; 
            distancia_x = linspace(0,L,n);
            distancia_r = linspace(0,re,m);
            reD = re/rw;
            rD = distancia_r/rw;
            tD = k*t/(phi*u*Ct*rw);
            
            % Escolha do Sistema de Unidadades de SAIDA (SI) %%
              
               if 1 == get(handles.popupmenu3,'Value')
                   
                   % Escolha do  Regime %
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, Pa');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, Pa');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        %Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, Pa');
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                        %P_r = Pw + (Pe - Pw)/(euler(2)-erf(sqrt(2)))*euler(2)*sqrt(2)*(erf(((distancia_r.^2/eta*t)+4)/(2*sqrt(2))-erf(sqrt(2))))
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);   
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                  
                    elseif 10 == get(handles.popupmenu1,'Value') % Esferico Transiente Vazao Constante
                        
                      %Funcao
                      %pD = radial_trans_vaz(rD,tD);
                      %deltaP = pD*q*u/(2*pi*k*h);
                      %P_r = Pe - deltaP;                        
                      %Grafico
                      %plot(distancia_r,P_r,'r','LineWidth',2);
                      %xlabel('r, m'); ylabel('Pressao, kgf')
                    
                    elseif 11 == get(handles.popupmenu1,'Value') % Esferico Transiente Pressao Constante
                        %Funcao
                        %Grafico
                        %plot(distancia_r,P_r,'r','LineWidth',2);
                        %xlabel('L, m'); ylabel('Pressao, Pa')
             end
                    
            % Escolha do Sistema de Unidadades de SAIDA (DARCY) %            
                    
            elseif 2 == get(handles.popupmenu3,'Value')

            % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (9.986*10^-6)*P_x;
                        distancia_x = 0.01*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = (9.986*10^-6)*P_x;
                        distancia_x = 0.01*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));
                        P_x = (9.986*10^-6)*P_x;
                        distancia_x = 0.01*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));
                        P_r = (9.986*10^-6)*P_r;
                        distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, atm');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.986*10^-6)*P_r;
                            distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                         % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.986*10^-6)*P_r;
                            distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');

                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.986*10^-6)*P_r;
                            distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (9.986*10^-6)*P_r;
                            distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (9.986*10^-6)*P_r;
                        distancia_r = 0.01*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                  
                  end
                    
            % Escolha do Sistema de Unidadades de SAIDA (PETROBRAS) %            
                    
            elseif 3 == get(handles.popupmenu3,'Value')

             % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (1.02*10^-5)*P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        P_x = (1.02*10^-5)*P_x;
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));
                        P_x = (1.02*10^-5)*P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));
                        P_r = (1.02*10^-5)*P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.02*10^-5)*P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.02*10^-5)*P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                       % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.02*10^-5)*P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (1.02*10^-5)*P_r;
                        %P_r = Pw + (Pe - Pw)/(euler(2)-erf(sqrt(2)))*euler(2)*sqrt(2)*(erf(((distancia_r.^2/eta*t)+4)/(2*sqrt(2))-erf(sqrt(2))))
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (1.02*10^-5)*P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                  
                 end
                    
            % Escolha do Sistema de Unidadades de SAIDA (AMERICANO) %
                    
            elseif 4 == get(handles.popupmenu3,'Value')
  
             % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = 0.000145*P_x;
                        distancia_x= 3.28084*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Press??o, psi');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = 0.000145*P_x;
                        distancia_x= 3.28084*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = 0.000145*P_x;
                        distancia_x= 3.28084*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = 0.000145*P_r;
                        distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = 0.000145*P_r;
                            distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = 0.000145*P_r;
                            distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = 0.000145*P_r;
                            distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = 0.000145*P_r;
                            distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = 0.000145*P_r;
                        distancia_r = 3.28084*distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                  
                    end
               end
                    
    % Escolha do Sistema de Unidadades de ENTRADA (DARCY) %
        
         elseif 2 == get(handles.popupmenu2,'Value')
            
            L = 100 * str2double(get(handles.edit1,'String')); %COMPRIMENTO
            A = 10000 * str2double(get(handles.edit2,'String')); %AREA
            phi = str2double(get(handles.edit3,'String')); %POROSIDADE
            k = (9.86923*10^-13) * str2double(get(handles.edit4,'String')); %PERMEABILIDADE
            u = (10^-3) * str2double(get(handles.edit5,'String')); %VISCOSIDADE
            Ct = (1/101325) * str2double(get(handles.edit6,'String')); %COMPRESSIBILIDADE
            Pw = 101325 * str2double(get(handles.edit7,'String')); %PRESSAO NO POCO
            Pe = 101325 * str2double(get(handles.edit8,'String')); %PRESSAO EXTERNA
            rw = 100 * str2double(get(handles.edit9,'String')); %RAIO DO POCO
            re = 100 *  str2double(get(handles.edit10,'String')); %RAIO EXTERNO
            h = 100 * str2double(get(handles.edit11,'String')); %ESPESSURA
            t = str2double(get(handles.edit12,'String')); %TEMPO
            q = (10^-6) * str2double(get(handles.edit13,'String')); %VAZAO
            eta = k/ (phi * u * Ct); 
            tempo_inicial = 0 ;
            n = L/11 ;
            m = re/11; 
            distancia_x = linspace(0,L,n);
            distancia_r = linspace(0,re,m);
            reD = re/rw;
            rD = distancia_r/rw;
            tD = k*t/(phi*u*Ct*rw);
               
           % Escolha do Sistema de Unidadades de SAIDA (SI) % 
           
                if 1 == get(handles.popupmenu3,'Value')
                
         
                % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x; 
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, Pa');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, Pa');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                                                % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                        
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);

                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');

                    end
      
                   
           % Escolha do Sistema de Unidadades de SAIDA (DARCY) % 
           
              elseif 2 == get(handles.popupmenu3,'Value')
           
               % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                                                P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (9.8692E-6) * P_r;
                        distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (9.8692E-6) * P_r;
                        distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                  
                    end
                    
        % Escolha do Sistema de Unidadades de SAIDA (PETROBRAS) %
                    
            elseif 3 == get(handles.popupmenu3,'Value')
            
             % Escolha do  Regime %%
                    
                   % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (1.01972E-5) * P_r;
                  
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');   
                    end
                    
          % Escolha do Sistema de Unidadades de SAIDA (AMERICANO) %
                    
            elseif 4 == get(handles.popupmenu3,'Value')

            % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Press??o, psi');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (0.000145038) * P_r;
                        distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r); 
                        P_r = (0.000145038) * P_r;
                        distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
 
                    end
                end
                
        % Escolha do Sistema de Unidadades de ENTRADA (PETROBAS) %
        
             elseif 3 == get(handles.popupmenu2,'Value') 
                
                L = str2double(get(handles.edit1,'String')); %COMPRIMENTO
                A = str2double(get(handles.edit2,'String')); %AREA
                phi = str2double(get(handles.edit3,'String')); %POROSIDADE
                k = (9.86923*10^-16) * str2double(get(handles.edit4,'String')); %PERMEABILIDADE
                u = (10^-3) * str2double(get(handles.edit5,'String')); %VISCOSIDADE
                Ct = (1/9.80665) * str2double(get(handles.edit6,'String')); %COMPRESSIBILIDADE
                Pw = 9.80665 * str2double(get(handles.edit7,'String')); %PRESSAO NO POCO
                Pe = 9.80665 * str2double(get(handles.edit8,'String')); %PRESSAO EXTERNA
                rw = str2double(get(handles.edit9,'String')); %RAIO DO POCO
                re = str2double(get(handles.edit10,'String')); %RAIO EXTERNO
                h = str2double(get(handles.edit11,'String')); %ESPESSURA
                t = 3600 *  str2double(get(handles.edit12,'String')); %TEMPO
                q = (1.15741E-5) * str2double(get(handles.edit13,'String')); %VAZAO
                eta = k/ (phi * u * Ct); 
                tempo_inicial = 0 ;
                n = L/11 ;
                m = re/11; 
                distancia_x = linspace(0,L,n);
                distancia_r = linspace(0,re,m);
                reD = re/rw;
                rD = distancia_r/rw;
                tD = k*t/(phi*u*Ct*rw);
                
                 
                % Escolha do Sistema de Unidadades de SAIDA (SI) %


                % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Press??o, Pa');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, Pa');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./0.0003484*tD) * z;

                            deltaP = pD*q*u*119.6/(k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, Pa');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                  
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);   
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');

                    end
      
                   
              % Escolha do Sistema de Unidadades de SAIDA (DARCY) % 
           
              elseif 2 == get(handles.popupmenu3,'Value')
               
                  
               % Escolha do  Regime %%
                    
                   if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                                                P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (9.8692E-6) * P_x;
                        distancia_x = 100 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (9.8692E-6) * P_r;
                        distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, cm'); ylabel('Pressao, atm');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (9.8692E-6) * P_r;
                            distancia_r = 100 * distancia_r;
                        
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (9.8692E-6) * P_r;
                        distancia_r = 100 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, cm'); ylabel('Pressao, atm');
                 
                    end
                    
        % Escolha do Sistema de Unidadades de SAIDA (PETROBRAS) %
                    
            elseif 3 == get(handles.popupmenu3,'Value')
                    
                   % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (1.01972E-5) * P_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, m'); ylabel('Pressao, kgf/cm2');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (1.01972E-5) * P_r;
                  
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r);
                        P_r = (1.01972E-5) * P_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, m'); ylabel('Pressao, kgf/cm2');  
                        
                    end
                    
          % Escolha do Sistema de Unidadades de SAIDA (AMERICANO) %
                    
            elseif 4 == get(handles.popupmenu3,'Value')
            % Escolha do  Regime %%
                    
                    if 1 == get(handles.popupmenu1,'Value') % Linear permanente
                        %Funcao
                        P_x = Pw + ((Pe - Pw)/L)*distancia_x;
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Press??o, psi');
                    
                 
                    elseif 2 == get(handles.popupmenu1,'Value') % Linear Transiente Vazao Constante
                        %Funcao
                        P_x = Pe - (q*u/(k*A))*(sqrt(4*eta*t/pi)*exp(-(distancia_x.^2)/(4*eta*t))-distancia_x.*erfc(distancia_x./sqrt(4*eta*t)));        
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                   
                    elseif 3 == get(handles.popupmenu1,'Value') % Linear Transiente Pressao Constante
                        %Funcao
                        P_x = Pw + (Pe - Pw).*erf(distancia_x./sqrt(4*eta*t));         
                        P_x = (0.000145038) * P_x;
                        distancia_x = 3.28084 * distancia_x;
                        %Grafico
                        plot(distancia_x,P_x,'g','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                
                    elseif 4 == get(handles.popupmenu1,'Value') % Radial Permanente
                        %Funcao
                        P_r = Pw + ((Pe - Pw)/(log(re/rw))).*(log(distancia_r./rw));      
                        P_r = (0.000145038) * P_r;
                        distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                   
                    elseif 5 == get(handles.popupmenu1,'Value') % Radial Transiente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s^(3/2)*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('r, ft'); ylabel('Pressao, psi');
                   
                    elseif 6 == get(handles.popupmenu1,'Value') % Radial Permanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,reD*sqrt(s))*besselk(0,rD*sqrt(s))-besselk(0,reD*sqrt(s))*besseli(0,rD*sqrt(s)))/(s^(3/2)*(besselk(1,sqrt(s))*besseli(0,reD*sqrt(s)) + besselk(0,reD*sqrt(s)*besseli(1,sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                                      
                    elseif 7 == get(handles.popupmenu1,'Value') % Radial  Pseudopermanente Vazao Constante (STEHFEST)
                        
                        %Funcao
                        % Algorotmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = (besseli(0,rD*sqrt(s))*besselk(1,reD*sqrt(s))+besseli(1,reD*sqrt(s))*besselk(0,rD*sqrt(s)))/(s^(3/2)*(besseli(1,reD*sqrt(s))*besselk(1,sqrt(s)) - besseli(0,sqrt(s)*besselk(1,reD*sqrt(s)))));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;

                            deltaP = pD*q*u/(2*pi*k*h);
                            P_r = Pe - deltaP;
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
                  
                    elseif 8 == get(handles.popupmenu1,'Value') % Radial Transiente Pressao Constante
                        %Funcao
                        % Algor???tmo de Stehfest

                            N = 16;
                            n = N/2;
                            z = 0;

                            for j = 1:N
                                s = log(2)/tD*j;
                                p_D = besselk(0,rD*sqrt(s))/(s*besselk(1,sqrt(s)));
                                Vj = 0;
                                for k = floor((j+1)/2):min(j,n)
                                    num = k^(1+n) * factorial(k*2);
                                    den = factorial(n-k) * (factorial(k))^2 * factorial(j-k) * factorial(2*k-j);  
                                    Vj = Vj + num/den;
                                end
                                Vj = ((-1)^(j+n))*Vj;

                                z = z + Vj * p_D;
                            end

                            pD = (log(2)./tD) * z;
                            P_r = Pe - ((Pe-Pw)*pD);
                            P_r = (0.000145038) * P_r;
                            distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, Pa');
                       
                    elseif 9 == get(handles.popupmenu1,'Value') % Esferico Permanente
                        %Funcao
                        deltaP = Pe - Pw;
                        P_r = Pe + (deltaP/(re - rw)).*(1/re - 1./distancia_r); 
                        P_r = (0.000145038) * P_r;
                        distancia_r = 3.28084 * distancia_r;
                        %Grafico
                        plot(distancia_r,P_r,'r','LineWidth',2);
                        xlabel('L, ft'); ylabel('Pressao, psi');
 
                    end        
              end
           
 

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
