local v0=game:GetService("Players");local v1=game:GetService("RunService");local v2=game:GetService("UserInputService");local v3=game:GetService("TweenService");local v4=game:GetService("CoreGui");local v5=workspace.CurrentCamera;local v6=v0.LocalPlayer;local v7={ESP={Enabled=false,BoxColor=Color3.new(1,0,0),DistanceColor=Color3.new(1,1,1),HealthGradient={Color3.new(0,1,0),Color3.new(1,1,0),Color3.new(1,0,0)},SnaplineEnabled=true,SnaplinePosition="Center",RainbowEnabled=false},Aimbot={Enabled=false,FOV=90,MaxDistance=200,ShowFOV=false,TargetPart="Head"},Combo={InfiniteJump={Enabled=false}}};local v8=0.5;local v9={};-- باقي الدوال كما هي (v10, v11, v12) لم يتم تغييرها

local function v10(v371) -- نفس الكود الأصلي
    -- ...
end

local function v11(v374,v375) -- نفس الكود الأصلي
    -- ...
end

local function v12() -- نفس الكود الأصلي
    -- ...
end

local v13=Drawing.new("Circle");v13.Thickness=2;v13.NumSides=100;v13.Filled=false;v13.Visible=v7.Aimbot.ShowFOV;v13.Color=Color3.new(1,1,1);
local v20=Instance.new("ScreenGui");v20.Name="ScriptGUI";v20.Parent=v4;v20.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;v20.DisplayOrder=1000;
local v26=Instance.new("Frame");v26.Name="MainFrame";v26.Size=UDim2.new(0,370,0,300);v26.Position=UDim2.new(0,10,0,10);v26.BackgroundColor3=Color3.new(0.05,0.05,0.05);v26.BorderSizePixel=0;v26.Active=true;v26.Draggable=true;v26.ZIndex=100;v26.Parent=v20;
local v36=Instance.new("UICorner");v36.CornerRadius=UDim.new(0,10);v36.Parent=v26;
local v39=Instance.new("UIGradient");v39.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.1,0.1,0.1)),ColorSequenceKeypoint.new(1,Color3.new(0.3,0.3,0.3))});v39.Rotation=90;v39.Parent=v26;
local v43=Instance.new("ImageLabel");v43.Size=UDim2.new(1,10,1,10);v43.Position=UDim2.new(0,-5,0,-5);v43.BackgroundTransparency=1;v43.Image="rbxassetid://131604521";v43.ImageColor3=Color3.new(0,0,0);v43.ImageTransparency=0.5;v43.ZIndex=99;v43.Parent=v26;
local v52=Instance.new("Frame");v52.Name="TitleBar";v52.Size=UDim2.new(1,0,0,30);v52.BackgroundColor3=Color3.new(0.2,0.2,0.2);v52.BorderSizePixel=0;v52.ZIndex=101;v52.Parent=v26;
local v59=Instance.new("TextLabel");v59.Name="TitleLabel";v59.Size=UDim2.new(0,180,0,30);v59.Position=UDim2.new(0,10,0,0);v59.BackgroundTransparency=1;v59.TextColor3=Color3.new(1,1,1);v59.Text="whoamhoam v1.1.0";v59.Font=Enum.Font.GothamBold;v59.TextSize=16;v59.TextXAlignment=Enum.TextXAlignment.Left;v59.ZIndex=102;v59.Parent=v52;
local v73=Instance.new("TextButton");v73.Name="MinimizeButton";v73.Size=UDim2.new(0,20,0,20);v73.Position=UDim2.new(1,-25,0,5);v73.BackgroundColor3=Color3.new(1,0,0);v73.TextColor3=Color3.new(1,1,1);v73.Text="-";v73.Font=Enum.Font.GothamBold;v73.TextSize=20;v73.ZIndex=102;v73.Parent=v52;
local v84=Instance.new("UICorner");v84.CornerRadius=UDim.new(0,5);v84.Parent=v73;
local function v87() for v430,v431 in ipairs(v26:GetDescendants()) do if v431:IsA("GuiObject") then v431.Visible=true;end end end
local v88=Instance.new("Frame");v88.Name="TabsFrame";v88.Size=UDim2.new(0,150,0,v26.Size.Y.Offset-v52.Size.Y.Offset);v88.Position=UDim2.new(0,0,0,v52.Size.Y.Offset);v88.BackgroundColor3=Color3.new(0.1,0.1,0.1);v88.BorderSizePixel=0;v88.ZIndex=101;v88.Parent=v26;
local v96=Instance.new("UICorner");v96.CornerRadius=UDim.new(0,10);v96.Parent=v88;
local v99=Instance.new("TextButton");v99.Name="ESPTabButton";v99.Size=UDim2.new(1,-10,0,40);v99.Position=UDim2.new(0,5,0,10);v99.BackgroundColor3=Color3.new(0.15,0.15,0.15);v99.TextColor3=Color3.new(1,1,1);v99.Text="ESP";v99.Font=Enum.Font.GothamBold;v99.TextSize=14;v99.ZIndex=102;v99.Parent=v88;
local v110=Instance.new("UICorner");v110.CornerRadius=UDim.new(0,5);v110.Parent=v99;
local v113=Instance.new("TextButton");v113.Name="AimbotTabButton";v113.Size=UDim2.new(1,-10,0,40);v113.Position=UDim2.new(0,5,0,60);v113.BackgroundColor3=Color3.new(0.15,0.15,0.15);v113.TextColor3=Color3.new(1,1,1);v113.Text="Aimbot";v113.Font=Enum.Font.GothamBold;v113.TextSize=14;v113.ZIndex=102;v113.Parent=v88;
local v124=Instance.new("UICorner");v124.CornerRadius=UDim.new(0,5);v124.Parent=v113;
-- زر التبويبة الجديدة Combo
local vComboTab=Instance.new("TextButton");vComboTab.Name="ComboTabButton";vComboTab.Size=UDim2.new(1,-10,0,40);vComboTab.Position=UDim2.new(0,5,0,110);vComboTab.BackgroundColor3=Color3.new(0.15,0.15,0.15);vComboTab.TextColor3=Color3.new(1,1,1);vComboTab.Text="Combo";vComboTab.Font=Enum.Font.GothamBold;vComboTab.TextSize=14;vComboTab.ZIndex=102;vComboTab.Parent=v88;
local vComboTabCorner=Instance.new("UICorner");vComboTabCorner.CornerRadius=UDim.new(0,5);vComboTabCorner.Parent=vComboTab;

local v127=Instance.new("Frame");v127.Name="ESPTabContent";v127.Size=UDim2.new(0,(v26.Size.X.Offset-v88.Size.X.Offset)-20,0,(v26.Size.Y.Offset-v52.Size.Y.Offset)-20);v127.Position=UDim2.new(0,v88.Size.X.Offset+10,0,v52.Size.Y.Offset+10);v127.BackgroundColor3=Color3.new(0.1,0.1,0.1);v127.BorderSizePixel=0;v127.ZIndex=101;v127.Parent=v26;
local v135=Instance.new("Frame");v135.Name="AimbotTabContent";v135.Size=v127.Size;v135.Position=v127.Position;v135.BackgroundColor3=Color3.new(0.1,0.1,0.1);v135.BorderSizePixel=0;v135.ZIndex=101;v135.Parent=v26;v135.Visible=false;
-- محتوى التبويبة الجديدة Combo
local vComboContent=Instance.new("Frame");vComboContent.Name="ComboTabContent";vComboContent.Size=v127.Size;vComboContent.Position=v127.Position;vComboContent.BackgroundColor3=Color3.new(0.1,0.1,0.1);vComboContent.BorderSizePixel=0;vComboContent.ZIndex=101;vComboContent.Parent=v26;vComboContent.Visible=false;

local v144=Instance.new("UICorner");v144.CornerRadius=UDim.new(0,10);v144.Parent=v127;
local v147=v144:Clone();v147.Parent=v135;
local vComboCorner=v144:Clone();vComboCorner.Parent=vComboContent;

local v149=10;local v150=40;local v151=10;local v152=10;
-- محتوى تبويبة ESP (كما هي)
local v153=Instance.new("TextButton");v153.Name="ESPButton";v153.Size=UDim2.new(0,180,0,v150);v153.Position=UDim2.new(0,v149,0,v152);v153.BackgroundColor3=Color3.new(0.15,0.15,0.15);v153.TextColor3=Color3.new(1,1,1);v153.Text="ESP";v153.Font=Enum.Font.GothamBold;v153.TextSize=14;v153.ZIndex=101;v153.Parent=v127;
local v164=Instance.new("UICorner");v164.CornerRadius=UDim.new(0,5);v164.Parent=v153;
local v167=Instance.new("Frame");v167.Name="ESPIndicator";v167.Size=UDim2.new(0,20,0,20);v167.Position=UDim2.new(1,-25,0,5);v167.BackgroundColor3=(v7.ESP.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0);v167.BorderSizePixel=0;v167.ZIndex=102;v167.Parent=v153;
local v175=Instance.new("UICorner");v175.CornerRadius=UDim.new(0,5);v175.Parent=v167;
v152=v152+v150+v151;
local v178=Instance.new("TextButton");v178.Name="SnaplineToggleButton";v178.Size=UDim2.new(0,180,0,v150);v178.Position=UDim2.new(0,v149,0,v152);v178.BackgroundColor3=Color3.new(0.15,0.15,0.15);v178.TextColor3=Color3.new(1,1,1);v178.Text="Snapline";v178.Font=Enum.Font.GothamBold;v178.TextSize=14;v178.ZIndex=101;v178.Parent=v127;
local v189=Instance.new("UICorner");v189.CornerRadius=UDim.new(0,5);v189.Parent=v178;
local v192=Instance.new("Frame");v192.Name="SnaplineToggleIndicator";v192.Size=UDim2.new(0,20,0,20);v192.Position=UDim2.new(1,-25,0,5);v192.BackgroundColor3=(v7.ESP.SnaplineEnabled and Color3.new(0,1,0)) or Color3.new(1,0,0);v192.BorderSizePixel=0;v192.ZIndex=102;v192.Parent=v178;
local v200=Instance.new("UICorner");v200.CornerRadius=UDim.new(0,5);v200.Parent=v192;
v152=v152+v150+v151;
local v203=Instance.new("TextLabel");v203.Name="SnaplinePositionLabel";v203.Size=UDim2.new(0,180,0,20);v203.Position=UDim2.new(0,v149,0,v152);v203.BackgroundTransparency=1;v203.TextColor3=Color3.new(1,1,1);v203.Text="Position:";v203.Font=Enum.Font.GothamBold;v203.TextSize=14;v203.TextXAlignment=Enum.TextXAlignment.Left;v203.ZIndex=101;v203.Parent=v127;
v152=v152+20;
local v215=Instance.new("TextButton");v215.Name="SnaplinePositionDropdown";v215.Size=UDim2.new(0,180,0,v150);v215.Position=UDim2.new(0,v149,0,v152);v215.BackgroundColor3=Color3.new(0.15,0.15,0.15);v215.TextColor3=Color3.new(1,1,1);v215.Text=v7.ESP.SnaplinePosition;v215.Font=Enum.Font.GothamBold;v215.TextSize=14;v215.TextXAlignment=Enum.TextXAlignment.Center;v215.ZIndex=101;v215.Parent=v127;
local v229=Instance.new("UICorner");v229.CornerRadius=UDim.new(0,5);v229.Parent=v215;
v152=v152+v150+v151;
local v232=Instance.new("TextButton");v232.Name="RainbowButton";v232.Size=UDim2.new(0,180,0,v150);v232.Position=UDim2.new(0,v149,0,v152);v232.BackgroundColor3=Color3.new(0.15,0.15,0.15);v232.TextColor3=Color3.new(1,1,1);v232.Text="Rainbow";v232.Font=Enum.Font.GothamBold;v232.TextSize=14;v232.ZIndex=101;v232.Parent=v127;
local v243=Instance.new("UICorner");v243.CornerRadius=UDim.new(0,5);v243.Parent=v232;
local v246=Instance.new("Frame");v246.Name="RainbowIndicator";v246.Size=UDim2.new(0,20,0,20);v246.Position=UDim2.new(1,-25,0,5);v246.BackgroundColor3=(v7.ESP.RainbowEnabled and Color3.new(0,1,0)) or Color3.new(1,0,0);v246.BorderSizePixel=0;v246.ZIndex=102;v246.Parent=v232;
local v254=Instance.new("UICorner");v254.CornerRadius=UDim.new(0,5);v254.Parent=v246;

-- محتوى تبويبة Aimbot (كما هي)
local v257=10;local v258=40;local v259=10;local v260=10;
local v261=Instance.new("TextButton");v261.Name="AimbotButton";v261.Size=UDim2.new(0,180,0,v258);v261.Position=UDim2.new(0,v257,0,v260);v261.BackgroundColor3=Color3.new(0.15,0.15,0.15);v261.TextColor3=Color3.new(1,1,1);v261.Text="Aimbot";v261.Font=Enum.Font.GothamBold;v261.TextSize=14;v261.ZIndex=101;v261.Parent=v135;
local v272=Instance.new("UICorner");v272.CornerRadius=UDim.new(0,5);v272.Parent=v261;
local v275=Instance.new("Frame");v275.Name="AimbotIndicator";v275.Size=UDim2.new(0,20,0,20);v275.Position=UDim2.new(1,-25,0,5);v275.BackgroundColor3=(v7.Aimbot.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0);v275.BorderSizePixel=0;v275.ZIndex=102;v275.Parent=v261;
local v283=Instance.new("UICorner");v283.CornerRadius=UDim.new(0,5);v283.Parent=v275;
v260=v260+v258+v259;
local v286=Instance.new("TextButton");v286.Name="FOVToggleButton";v286.Size=UDim2.new(0,180,0,v258);v286.Position=UDim2.new(0,v257,0,v260);v286.BackgroundColor3=Color3.new(0.15,0.15,0.15);v286.TextColor3=Color3.new(1,1,1);v286.Text="FOV Circle";v286.Font=Enum.Font.GothamBold;v286.TextSize=14;v286.ZIndex=101;v286.Parent=v135;
local v297=Instance.new("UICorner");v297.CornerRadius=UDim.new(0,5);v297.Parent=v286;
local v300=Instance.new("Frame");v300.Name="FOVToggleIndicator";v300.Size=UDim2.new(0,20,0,20);v300.Position=UDim2.new(1,-25,0,5);v300.BackgroundColor3=(v7.Aimbot.ShowFOV and Color3.new(0,1,0)) or Color3.new(1,0,0);v300.BorderSizePixel=0;v300.ZIndex=102;v300.Parent=v286;
local v308=Instance.new("UICorner");v308.CornerRadius=UDim.new(0,5);v308.Parent=v300;
v260=v260+v258+v259;
local v311=Instance.new("TextLabel");v311.Name="FOVLabel";v311.Size=UDim2.new(0,180,0,20);v311.Position=UDim2.new(0,v257,0,v260);v311.BackgroundTransparency=1;v311.TextColor3=Color3.new(1,1,1);v311.Text="FOV:";v311.Font=Enum.Font.GothamBold;v311.TextSize=14;v311.ZIndex=101;v311.Parent=v135;
v260=v260+20;
local v322=Instance.new("TextBox");v322.Name="FOVTextBox";v322.Size=UDim2.new(0,180,0,v258);v322.Position=UDim2.new(0,v257,0,v260);v322.BackgroundColor3=Color3.new(0.15,0.15,0.15);v322.TextColor3=Color3.new(1,1,1);v322.Text=tostring(v7.Aimbot.FOV);v322.Font=Enum.Font.GothamBold;v322.TextSize=14;v322.ZIndex=101;v322.Parent=v135;
local v333=Instance.new("UICorner");v333.CornerRadius=UDim.new(0,5);v333.Parent=v322;
v260=v260+v258+v259;
local v336=Instance.new("TextLabel");v336.Name="DistanceLabel";v336.Size=UDim2.new(0,180,0,20);v336.Position=UDim2.new(0,v257,0,v260);v336.BackgroundTransparency=1;v336.TextColor3=Color3.new(1,1,1);v336.Text="Max Distance:";v336.Font=Enum.Font.GothamBold;v336.TextSize=14;v336.ZIndex=101;v336.Parent=v135;
v260=v260+20;
local v347=Instance.new("TextBox");v347.Name="DistanceTextBox";v347.Size=UDim2.new(0,180,0,v258);v347.Position=UDim2.new(0,v257,0,v260);v347.BackgroundColor3=Color3.new(0.15,0.15,0.15);v347.TextColor3=Color3.new(1,1,1);v347.Text=tostring(v7.Aimbot.MaxDistance);v347.Font=Enum.Font.GothamBold;v347.TextSize=14;v347.ZIndex=101;v347.Parent=v135;
local v358=Instance.new("UICorner");v358.CornerRadius=UDim.new(0,5);v358.Parent=v347;

-- محتوى تبويبة Combo
local vComboY=10;
local infiniteJumpButton=Instance.new("TextButton");infiniteJumpButton.Name="InfiniteJumpButton";infiniteJumpButton.Size=UDim2.new(0,180,0,40);infiniteJumpButton.Position=UDim2.new(0,10,0,vComboY);infiniteJumpButton.BackgroundColor3=Color3.new(0.15,0.15,0.15);infiniteJumpButton.TextColor3=Color3.new(1,1,1);infiniteJumpButton.Text="Infinite Jump";infiniteJumpButton.Font=Enum.Font.GothamBold;infiniteJumpButton.TextSize=14;infiniteJumpButton.ZIndex=101;infiniteJumpButton.Parent=vComboContent;
local infiniteJumpCorner=Instance.new("UICorner");infiniteJumpCorner.CornerRadius=UDim.new(0,5);infiniteJumpCorner.Parent=infiniteJumpButton;
local infiniteJumpIndicator=Instance.new("Frame");infiniteJumpIndicator.Name="InfiniteJumpIndicator";infiniteJumpIndicator.Size=UDim2.new(0,20,0,20);infiniteJumpIndicator.Position=UDim2.new(1,-25,0,5);infiniteJumpIndicator.BackgroundColor3=(v7.Combo.InfiniteJump.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0);infiniteJumpIndicator.BorderSizePixel=0;infiniteJumpIndicator.ZIndex=102;infiniteJumpIndicator.Parent=infiniteJumpButton;
local infiniteJumpIndicatorCorner=Instance.new("UICorner");infiniteJumpIndicatorCorner.CornerRadius=UDim.new(0,5);infiniteJumpIndicatorCorner.Parent=infiniteJumpIndicator;

-- وظيفة التمرير للأزرار
local function v361(v398) local v399=v398.Size;v398.MouseEnter:Connect(function() v3:Create(v398,TweenInfo.new(0.2),{Size=v399+UDim2.new(0,5,0,5)}):Play();v398.BackgroundColor3=Color3.new(0.25,0.25,0.25);end);v398.MouseLeave:Connect(function() v3:Create(v398,TweenInfo.new(0.2),{Size=v399}):Play();v398.BackgroundColor3=Color3.new(0.15,0.15,0.15);end);end
v361(v99);v361(v113);v361(v73);v361(vComboTab);v361(infiniteJumpButton);

-- تبديل التبويبات
local v362="ESP";
local function v363(v400)
    v362=v400;
    v127.Visible=v400=="ESP";
    v135.Visible=v400=="Aimbot";
    vComboContent.Visible=v400=="Combo";
    local v402={v99,v113,vComboTab};
    for v519,v520 in ipairs(v402) do
        if v520.Name==(v400.."TabButton") then
            v520.BackgroundColor3=Color3.new(0.2,0.2,0.2);
        else
            v520.BackgroundColor3=Color3.new(0.15,0.15,0.15);
        end
    end
end
v99.MouseButton1Click:Connect(function() v363("ESP");end);
v113.MouseButton1Click:Connect(function() v363("Aimbot");end);
vComboTab.MouseButton1Click:Connect(function() v363("Combo");end);

-- أحداث الأزرار
v153.MouseButton1Click:Connect(function() v7.ESP.Enabled= not v7.ESP.Enabled;v3:Create(v167,TweenInfo.new(0.2),{BackgroundColor3=(v7.ESP.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0)}):Play();end);
v261.MouseButton1Click:Connect(function() v7.Aimbot.Enabled= not v7.Aimbot.Enabled;v3:Create(v275,TweenInfo.new(0.2),{BackgroundColor3=(v7.Aimbot.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0)}):Play();end);
v286.MouseButton1Click:Connect(function() v7.Aimbot.ShowFOV= not v7.Aimbot.ShowFOV;v13.Visible=v7.Aimbot.ShowFOV;v3:Create(v300,TweenInfo.new(0.2),{BackgroundColor3=(v7.Aimbot.ShowFOV and Color3.new(0,1,0)) or Color3.new(1,0,0)}):Play();end);
infiniteJumpButton.MouseButton1Click:Connect(function()
    v7.Combo.InfiniteJump.Enabled = not v7.Combo.InfiniteJump.Enabled;
    v3:Create(infiniteJumpIndicator,TweenInfo.new(0.2),{BackgroundColor3=(v7.Combo.InfiniteJump.Enabled and Color3.new(0,1,0)) or Color3.new(1,0,0)}):Play();
    -- تفعيل/تعطيل Infinite Jump
    if v7.Combo.InfiniteJump.Enabled then
        -- بدء الاستماع للقفز
        local userInputService = v2
        local jumpConnection
        jumpConnection = userInputService.JumpRequest:Connect(function()
            if v7.Combo.InfiniteJump.Enabled and v6.Character and v6.Character:FindFirstChildOfClass("Humanoid") then
                v6.Character.Humanoid:ChangeState("Jumping")
            end
        end)
        -- تخزين الاتصال لإمكانية فصله لاحقاً
        v7.Combo.InfiniteJump.Connection = jumpConnection
    else
        -- إيقاف الاستماع
        if v7.Combo.InfiniteJump.Connection then
            v7.Combo.InfiniteJump.Connection:Disconnect()
            v7.Combo.InfiniteJump.Connection = nil
        end
    end
end);

-- معالجة إدخالات FOV و Distance
v322.FocusLost:Connect(function(enter)
    if enter then
        local val = tonumber(v322.Text)
        if val then v7.Aimbot.FOV = math.clamp(val,1,360) end
        v322.Text = tostring(v7.Aimbot.FOV)
    end
end)
v347.FocusLost:Connect(function(enter)
    if enter then
        local val = tonumber(v347.Text)
        if val then v7.Aimbot.MaxDistance = math.max(val,1) end
        v347.Text = tostring(v7.Aimbot.MaxDistance)
    end
end)

-- تحديث دائرة FOV
v1.RenderStepped:Connect(function()
    if v7.Aimbot.ShowFOV and v13 then
        local center = v5.ViewportSize/2
        v13.Position = Vector2.new(center.X, center.Y)
        v13.Radius = v7.Aimbot.FOV * (center.X/360)  -- تحويل تقريبي
    end
end)

-- تحديث ESP
v1.RenderStepped:Connect(function()
    for v374,v375 in pairs(v9) do
        v11(v374,v375)
    end
    if v7.Aimbot.Enabled then
        local target = v12()
        -- يمكن إضافة كود التصويب هنا
    end
end)

-- إضافة لاعبين جدد
v0.PlayerAdded:Connect(function(plr)
    if plr ~= v6 then
        v10(plr)
    end
end)
for _,plr in ipairs(v0:GetPlayers()) do
    if plr ~= v6 then
        v10(plr)
    end
end

-- إزالة اللاعبين
v0.PlayerRemoving:Connect(function(plr)
    if v9[plr] then
        for _,draw in pairs(v9[plr]) do
            draw:Remove()
        end
        v9[plr] = nil
    end
end)

-- تصغير/تكبير (اختياري)
local minimized = false
v73.MouseButton1Click:Connect(function()
    minimized = not minimized
    v3:Create(v26,TweenInfo.new(0.3),{Size=minimized and UDim2.new(0,370,0,30) or UDim2.new(0,370,0,300)}):Play()
    v88.Visible = not minimized
    v127.Visible = not minimized and v362=="ESP"
    v135.Visible = not minimized and v362=="Aimbot"
    vComboContent.Visible = not minimized and v362=="Combo"
    v73.Text = minimized and "+" or "-"
end)
