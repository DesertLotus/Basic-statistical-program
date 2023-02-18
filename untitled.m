function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 20-Dec-2020 16:01:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inp_Callback(hObject, eventdata, handles)
% hObject    handle to inp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inp as text
%        str2double(get(hObject,'String')) returns contents of inp as a double


% --- Executes during object creation, after setting all properties.
function inp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function out_Callback(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of out as text
%        str2double(get(hObject,'String')) returns contents of out as a double


% --- Executes during object creation, after setting all properties.
function out_CreateFcn(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sort.
function sort_Callback(hObject, eventdata, handles)

inp_data = get(handles.inp,'string');% input data

dat2 = strsplit(inp_data,' ');

dat3 = str2double(dat2);
dat4 = dat3(~isnan(dat3));
dat5 = sort(dat4);
set(handles.out,'String',num2str(dat5))

% --- Executes on button press in len.
function len_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = length(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in prod.
function prod_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = prod(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in sum.
function sum_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = sum(dat2);
set(handles.res,'String',num2str(dat3))
% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = median(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = min(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = max(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = mean(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in sapma.
function sapma_Callback(hObject, eventdata, handles)

dat1 = get(handles.out,'String');
dat2 = str2num(dat1);
dat3 = std(dat2);
set(handles.res,'String',num2str(dat3))

% --- Executes on button press in More_than.
function More_than_Callback(hObject, eventdata, handles)
dat1 = get(handles.out,'String');
tad1 = get(handles.edit3,'String');
dat2 = str2num(dat1);
tad2 = str2double(tad1);

counter = 0;
for i =1:length(dat2)
    if dat2(i)>tad2
        counter = counter+1;
        
    end
end
set(handles.res,'String',num2str(counter))

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
dat1 = get(handles.out,'String');
tad1 = get(handles.edit5,'String');
dat2 = str2num(dat1);
tad2 = str2double(tad1);
counter = 0;
for i =1:length(dat2)
    if dat2(i)==tad2
        counter = counter+1;
    end
end
set(handles.res,'String',num2str(counter))

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
dat1 = get(handles.out,'String');
tad1 = get(handles.edit4,'String');
dat2 = str2num(dat1);
tad2 = str2double(tad1);
counter = 0;
for i =1:length(dat2)
    if dat2(i)<tad2
        counter = counter+1;
        
    end
end
set(handles.res,'String',num2str(counter))


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



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of res as text
%        str2double(get(hObject,'String')) returns contents of res as a double


% --- Executes during object creation, after setting all properties.
function res_CreateFcn(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on More_than and none of its controls.
function More_than_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to More_than (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on sapma and none of its controls.
function sapma_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to sapma (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over sum.
function sum_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to sum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on sum and none of its controls.
function sum_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to sum (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function sum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over sort.
function sort_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to sort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
