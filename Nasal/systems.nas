# AIRBUS A300-600 SYSTEMS FILE
##########################

setlistener("/sim/signals/fdm-initialized", func {	
  	itaf.ap_init();			
	var autopilot = gui.Dialog.new("sim/gui/dialogs/autopilot/dialog", "Aircraft/A300-600/Systems/autopilot-dlg.xml");
	setprop("/it-autoflight/settings/retard-enable", 1);  # Enable or disable automatic autothrottle retard.
	setprop("/it-autoflight/settings/retard-ft", 40);     # Add this to change the retard altitude, default is 50ft AGL.
	setprop("/it-autoflight/settings/land-flap", 0.745);  # Define the landing flaps here. This is needed for autoland, and retard.
	setlistener("/engines/engine[0]/egt-degf", func {
		setprop("engines/engine[0]/egt-degc", (getprop("engines/engine[0]/egt-degf") - 32) / 1.8);
	});
	setlistener("/engines/engine[1]/egt-degf", func {
		setprop("engines/engine[1]/egt-degc", (getprop("engines/engine[1]/egt-degf") - 32) / 1.8);
	});
});