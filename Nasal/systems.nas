# AIRBUS A300-600 SYSTEMS FILE
##########################


setlistener("/sim/signals/fdm-initialized", func {	
  	itaf.ap_init();			
	var autopilot = gui.Dialog.new("sim/gui/dialogs/autopilot/dialog", "Aircraft/A300-600/Systems/autopilot-dlg.xml");
	setprop("/it-autoflight/settings/retard-enable", 1);  # Enable or disable automatic autothrottle retard.
	setprop("/it-autoflight/settings/retard-ft", 50);     # Add this to change the retard altitude, default is 50ft AGL.
	setprop("/it-autoflight/settings/land-flap", 0.6);    # Define the landing flaps here. This is needed for autoland, and retard.
});

