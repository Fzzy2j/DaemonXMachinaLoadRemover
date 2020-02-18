state("DXM-Win64-Shipping") {
	int loading : "DXM-Win64-Shipping.exe", 0x45869D0; // This value changes during load screens
}

init {
	vars.notLoading = current.loading;
}

update {
	if (vars.notLoading == 0) {
		vars.notLoading = current.loading;
		print("notLoading = " + vars.notLoading);
	}
}

isLoading {
	return current.loading != vars.notLoading;
}