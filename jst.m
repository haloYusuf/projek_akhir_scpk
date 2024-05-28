function varargout = jst(varargin)
% JST MATLAB code for jst.fig
%      JST, by itself, creates a new JST or raises the existing
%      singleton*.
%
%      H = JST returns the handle to a new JST or the handle to
%      the existing singleton*.
%
%      JST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JST.M with the given input arguments.
%
%      JST('Property','Value',...) creates a new JST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jst_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jst_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jst

% Last Modified by GUIDE v2.5 28-May-2024 19:38:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jst_OpeningFcn, ...
                   'gui_OutputFcn',  @jst_OutputFcn, ...
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


% --- Executes just before jst is made visible.
function jst_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jst (see VARARGIN)

% Choose default command line output for jst
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jst wait for user response (see UIRESUME)
% uiwait(handles.figure1);
opts = detectImportOptions ('mainData.xlsx');
opts.SelectedVariableNames = (1 :10);
data = readtable('mainData.xlsx', opts);
data = table2cell(data);
data = data (:, 1:10);
set(handles.mainTable,'data',data);



% --- Outputs from this function are returned to the command line.
function varargout = jst_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function carat_Callback(hObject, eventdata, handles)
% hObject    handle to carat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of carat as text
%        str2double(get(hObject,'String')) returns contents of carat as a double


% --- Executes during object creation, after setting all properties.
function carat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to carat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function table_Callback(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of table as text
%        str2double(get(hObject,'String')) returns contents of table as a double


% --- Executes during object creation, after setting all properties.
function table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price_Callback(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price as text
%        str2double(get(hObject,'String')) returns contents of price as a double


% --- Executes during object creation, after setting all properties.
function price_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z_Callback(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z as text
%        str2double(get(hObject,'String')) returns contents of z as a double


% --- Executes during object creation, after setting all properties.
function z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data_latih = xlsread('diamonds.xlsx',1,'AC7:AH274');
target_latih = xlsread('diamonds.xlsx',1,'AI7:AI274');

data_latih = data_latih';
target_latih = target_latih';

net = newp([0 1; 0 1; 0 1; 0 1; 0 1; 0 1], 1);
net.IW{1,1} = [1 1 1 1 1 1]; 
net.b{1} = [1];
a = sim(net, data_latih);
e = a - target_latih;

net.trainParam.epochs = 268;
net = train(net, data_latih, target_latih);

c = str2double(get(handles.carat,'string'));
t = str2double(get(handles.table,'string'));
p = str2double(get(handles.price,'string'));
x = str2double(get(handles.x,'string'));
y = str2double(get(handles.y,'string'));
z = str2double(get(handles.z,'string'));

c = (c - 0.23)/1.29;
t = (t - 52)/14;
p = (p - 336)/3538;
x = (x - 3.94)/3.62;
y = (y - 3.96) / 3.46;
z = (z - 0) / 4.8; 

n = [c t p x y z];
v = sim(net, n');

if(v == 0),
    set(handles.result,'string',"I1");
    set(handles.keteranganText, 'string', "Dengan data yang diberikan, kemungkinan berlian memiliki kejernihan di mana inklusi kecil dapat dengan mudah dideteksi oleh profesional terlatih dengan pembesaran 10X. Tanpa menggunakan alat bantu pembesaran apa pun, Anda tidak akan dapat melihat kekurangan atau inklusi apa pun dengan mata telanjang.");
else 
    set(handles.result,'string',"VVS2");
    set(handles.keteranganText, 'string', "Dengan data yang diberikan, kemungkinan berlian memiliki inklusi sangat kecil, hampir tidak terlihat bahkan dengan pembesaran 10X.");
end;

function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resetbutton.
function resetbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resetbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.carat,'string',"");
set(handles.table,'string',"");
set(handles.price,'string',"");
set(handles.x,'string',"");
set(handles.y,'string',"");
set(handles.z,'string',"");
set(handles.result,'string',"");
set(handles.keteranganText, 'string', "");
