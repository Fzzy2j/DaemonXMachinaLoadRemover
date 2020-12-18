state("DXM-Win64-Shipping") {
	int loading : "DXM-Win64-Shipping.exe", 0x045FD778, 0x18, 0x40, 0x34C, 0x410, 0x4E0, 0x578, 0x1E8; // 3 on loading screens 2 during gameplay
}

init {
	vars.loadingTimestamp = 0;
}

update {
	if (current.loading != 3) vars.loadingTimestamp = 0;
	else if (vars.loadingTimestamp == 0) vars.loadingTimestamp = Environment.TickCount;
}

isLoading {
	if (vars.loadingTimestamp == 0) return false;
	return Environment.TickCount - vars.loadingTimestamp > 200;
}
