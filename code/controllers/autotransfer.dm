var/datum/controller/transfer_controller/transfer_controller

datum/controller/transfer_controller
	var/timerbuffer = 0 //buffer for time check
	var/currenttick = 0
	var/shift_hard_end = 0 //VOREStation Edit
	var/shift_last_vote = 0 //VOREStation Edit
datum/controller/transfer_controller/New()
	timerbuffer = config.vote_autotransfer_initial
	shift_hard_end = config.vote_autotransfer_initial + (config.vote_autotransfer_interval * 1) //VOREStation Edit //Change this "1" to how many extend votes you want there to be.
	shift_last_vote = shift_hard_end - config.vote_autotransfer_interval
	processing_objects += src

datum/controller/transfer_controller/Destroy()
	processing_objects -= src

datum/controller/transfer_controller/proc/process()
	currenttick = currenttick + 1
	if (round_duration_in_ticks >= shift_last_vote - 2 MINUTES) //VOREStation Edit START
		shift_last_vote = 999999999999 //Setting to a stupidly high number since it'll be not used again.
		world << "Warning: This upcoming extend vote will be your LAST extend vote. Wrap up your scenes in the next 60 minutes if the vote succeeds." //VOREStation Edit
	if (round_duration_in_ticks >= shift_hard_end - 1 MINUTE)
		init_shift_change(null, 1)
		shift_hard_end = timerbuffer + config.vote_autotransfer_interval //If shuttle somehow gets recalled, let's force it to call again next time a vote would occur.
		timerbuffer = timerbuffer + config.vote_autotransfer_interval //Just to make sure a vote doesn't occur immediately afterwords.
	else if (round_duration_in_ticks >= timerbuffer - 1 MINUTE) //VOREStation Edit END
		vote.autotransfer()
		timerbuffer = timerbuffer + config.vote_autotransfer_interval
