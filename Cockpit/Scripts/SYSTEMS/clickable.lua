
dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")
dofile(LockOn_Options.script_path.."dump.lua")


update_time_step = 0.02 --update will be called 50 times per second
make_default_activity(update_time_step) 
sensor_data = get_base_data()
local dev 	    =   GetSelf()
local aircraft = get_aircraft_type()

function post_initialize()
    --print_message_to_user(aircraft)

    dispatch_action(nil,Keys.iCommandCockpitClickModeOnOff) 

	local birth = LockOn_Options.init_conditions.birth_place

    if birth=="GROUND_HOT" or birth=="AIR_HOT" then
    elseif birth=="GROUND_COLD" then
    end
  

	

end







function SetCommand(command,value)

    if command == device_commands.CLIC_FLAPS_MULTI and  value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneFlaps)
    end 
    if command == device_commands.CLIC_FLAPS_UP then
        dispatch_action(nil,Keys.iCommandPlaneFlapsOff)    
    end 
             
    if command == device_commands.CLIC_FLAPS_DOWN or command == device_commands.CLIC_FLAPS_LAND then
    dispatch_action(nil,Keys.iCommandPlaneFlapsOn)    
    end         
    if command == device_commands.CLIC_LANDING_LIGHTS and value ==1 then
    dispatch_action(nil,Keys.iCommandPlaneHeadLightOnOff)   
    end   
    
    if command == device_commands.CLIC_ASC_DC and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneCobra)   
    end    
    if command == device_commands.CLIC_FUEL_DUMP_ON  then
        dispatch_action(nil,Keys.iCommandPlaneFuelOn)
    end
    if command == device_commands.CLIC_FUEL_DUMP_OFF      then
        dispatch_action(nil,Keys.iCommandPlaneFuelOff)
    end          
    if command == device_commands.CLIC_AUTO_STOP    then
        dispatch_action(nil,Keys.iCommandPlaneStabCancel)
    end         
    if command == device_commands.CLIC_AUTO_BARO and value ==1 then
    dispatch_action(nil,Keys.iCommandPlaneStabHbarBank)
    end  
    
    if command == device_commands.CLIC_AUTO_RADAR and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneStabHrad)
        end  
             
    if command == device_commands.CLIC_AUTO_LEVEL and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneStabHorizon) 
    end      
    if command == device_commands.CLIC_AUTO_ROUTE  and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneRouteAutopilot) 
    end  
    if command == device_commands.CLIC_AUTO_ALT  and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneStabTangBank) 
    end      
    if command == device_commands.CLIC_HUD_REPEATER and value ==1 then
        dispatch_action(nil,Keys.iCommandPlaneRightMFD_OSB1) 
    end     
    if command == device_commands.CLIC_POWER  and value ==1 then
        dispatch_action(nil,Keys.iCommandPowerOnOff) 
    end            
    if command == device_commands.CLIC_ENG_L_START  and value ==1 then  
        dispatch_action(nil,Keys.iCommandLeftEngineStart) 
    end    
    if command == device_commands.CLIC_ENG_R_START  and value ==1 then  
        dispatch_action(nil,Keys.iCommandRightEngineStart) 
    end
    if command == device_commands.CLIC_ENG_L_STOP   then  
        dispatch_action(nil,Keys.iCommandLeftEngineStop)  
    end  
    if command == device_commands.CLIC_ENG_R_STOP    then  
        dispatch_action(nil,Keys.iCommandRightEngineStop)  
    end   
 
    if command == device_commands.CLIC_CTM and value ==1 then 
        dispatch_action(nil,Keys.iCommandPlaneDropSnar) 
    end    
    if command == device_commands.CLIC_JAM and value ==1 then 
        dispatch_action(nil,Keys.iCommandActiveJamming) 
    end    
    if command == device_commands.CLIC_HUD_FILTER  and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneHUDFilterOnOff) 
    end 

    if command == device_commands.CLIC_GEAR   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneGear) 
    end     
    if command == device_commands.CLIC_CANOPY   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneFonar) 
    end 
    if command == device_commands.CLIC_NAVLIGHTS   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneLightsOnOff) 
    end  
    if command == device_commands.CLIC_COCKPITLIGHT   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneCockpitIllumination) 
    end 
    if command == device_commands.CLIC_JETTINSON_TANK   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneJettisonFuelTanks) 
    end 
    if command == device_commands.CLIC_JETTINSON   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons) 
    end
    if command == device_commands.CLIC_JETTINSON_EMER   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons) 
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
        dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
    end
    if command == device_commands.CLIC_RADAR_ON_OFF   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneRadarOnOff) 
    end
    if command == device_commands.CLIC_EOS_ON_OFF   and value ==1 then  
        dispatch_action(nil,Keys.iCommandPlaneEOSOnOff) 
    end

    if command == device_commands.CLIC_SCAN_L   then 
        dispatch_action(nil,Keys.iCommandSelecterLeft)
						if value ~=1 then
							dispatch_action(nil,Keys.iCommandSelecterStop)	
						end
    end

    if command == device_commands.CLIC_SCAN_R   then  
        dispatch_action(nil,Keys.iCommandSelecterRight) 
        if value ~=1 then
            dispatch_action(nil,Keys.iCommandSelecterStop)	
        end
    end

    if command == device_commands.CLIC_SCAN_U   then  
        dispatch_action(nil,Keys.iCommandSelecterUp) 
        if value ~=1 then
            dispatch_action(nil,Keys.iCommandSelecterStop)	
        end
    end
    
    if command == device_commands.CLIC_SCAN_D   then  
        dispatch_action(nil,Keys.iCommandSelecterDown) 
        if value ~=1 then
            dispatch_action(nil,Keys.iCommandSelecterStop)	
        end
    end

    
    if command == device_commands.CLIC_NAVMODES then
        if value == 1 then 
    dispatch_action(nil,Keys.iCommandPlaneModeNAV)

        end
    end

    if command == device_commands.CLIC_MODE_BVR then
        dispatch_action(nil,Keys.iCommandPlaneModeBVR)
    end
    if command == device_commands.CLIC_MODE_VS then
        dispatch_action(nil,Keys.iCommandPlaneModeVS)
    end
    if command == device_commands.CLIC_MODE_BORE then
        dispatch_action(nil,Keys.iCommandPlaneModeBore)
    end
    if command == device_commands.CLIC_MODE_HMD then
        dispatch_action(nil,Keys.iCommandPlaneModeHelmet)
    end
    if command == device_commands.CLIC_HUD_COLOR and value == 1 then
        dispatch_action(nil,Keys.iCommandBrightnessILS)
        
    end

    if command == device_commands.CLIC_HUD_BRT and value >0 then
        dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
        dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
        dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
        dispatch_action(nil,Keys.iCommandHUDBrightnessUp)



    elseif command == device_commands.CLIC_HUD_BRT and  value <0 then
        dispatch_action(nil,Keys.iCommandHUDBrightnessDown)  
        dispatch_action(nil,Keys.iCommandHUDBrightnessDown)
        dispatch_action(nil,Keys.iCommandHUDBrightnessDown)  
        dispatch_action(nil,Keys.iCommandHUDBrightnessDown)  


    end
    if command == device_commands.CLIC_MIRROIR and value == 1 then
        dispatch_action(nil,Keys.iCommandToggleMirrors)
        
    end

    if command == device_commands.CLIC_ENG_INLET and value == 1 then
        dispatch_action(nil,Keys.iCommandPlane_HOTAS_ChinaHatForward)
        
    end

    if command == device_commands.CLIC_EMER_BRAKE and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneWheelParkingBrake)
        
    end

    if command == device_commands.CLIC_NOSE_WHEEL and value == 1 then
        dispatch_action(nil,Keys.iCommandPlane_HOTAS_NoseWheelSteeringButton)
        
    end

    if command == device_commands.CLIC_EJECT and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneEject)
        
    end

    if command == device_commands.CLIC_RWR_MODE and value == 1 then
        dispatch_action(nil,Keys.iCommandChangeRWRMode)
        
    end

    if command == device_commands.CLIC_RWR_SOUND and value >0 then
        dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeUp)
        dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeUp)
    elseif command == device_commands.CLIC_RWR_SOUND and  value <0 then
        dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeDown) 
        dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeDown)  
    end

    if command == device_commands.CLIC_WARNING_RST and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneResetMasterWarning)
        
    end

    if command == device_commands.CLIC_DSP_ZOOMIN and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneZoomIn)
        
    end
    if command == device_commands.CLIC_DSP_ZOOMOUT and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneZoomOut)
        
    end
    if command == device_commands.CLIC_CLOCK_F and value == 1 then
        dispatch_action(nil,Keys.iCommandFlightClockReset)
        
    end
    if command == device_commands.CLIC_CLOCK_E and value == 1 then
        dispatch_action(nil,Keys.iCommandClockElapsedTimeReset)
        
    end
    if command == device_commands.CLIC_ALTIMETER and value >0 then
        dispatch_action(nil,Keys.iCommandAltimeterPressureIncrease)
        dispatch_action(nil,Keys.iCommandAltimeterPressureIncrease)
        dispatch_action(nil,Keys.iCommandAltimeterPressureIncrease)
    elseif command == device_commands.CLIC_ALTIMETER and  value <0 then
        dispatch_action(nil,Keys.iCommandAltimeterPressureDecrease) 
        dispatch_action(nil,Keys.iCommandAltimeterPressureDecrease) 
        dispatch_action(nil,Keys.iCommandAltimeterPressureDecrease) 
    end


--[Su-33] Specifics

    if command == device_commands.CLIC_AUTO_GCA and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneSAUHRadio)
        
    end

    if command == device_commands.CLIC_AUTOTHRUST and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneAUTOnOff)
        
    end

    if command == device_commands.CLIC_AUTOTHRUST_I and value == 1 then
        dispatch_action(0,Keys.iCommandPlaneAUTIncrease,1.0)
    elseif value == 0 then
        dispatch_action(0,Keys.iCommandPlaneAUTIncrease,0.0)
            
        
    end

    if command == device_commands.CLIC_AUTOTHRUST_D and value == 1 then
        dispatch_action(0,Keys.iCommandPlaneAUTIncrease,-1.0)
    elseif value == 0 then
        dispatch_action(0,Keys.iCommandPlaneAUTIncrease,0.0)
        
    end

    if command == device_commands.CLIC_ASC_REFUEL and value == 1 then
        dispatch_action(nil,Keys.iCommandPlane_ADF_Mode_change)
        
    end

    if command == device_commands.CLIC_RBOOM and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneAirRefuel)
        
    end

    if command == device_commands.CLIC_AFTERURN_S and value == 1 then
        dispatch_action(nil,Keys.iCommandPlane_P_51_WarEmergencyPower)
        
    end

    if command == device_commands.CLIC_RLIGHTS and value == 1 then
        dispatch_action(nil,Keys.iCommandPlane_ADF_Test)
        
    end

    if command == device_commands.CLIC_TAILHOOK and value == 1 then
        dispatch_action(nil,Keys.iCommandPlaneHook)
        
    end

    if command == device_commands.CLIC_WINGSF and value == 1 then
        dispatch_action(nil,Keys.iCommandPlanePackWing)
        
    end





    

     
 
    


end
	

function update()

end
need_to_be_closed = false -- close lua state after initialization


