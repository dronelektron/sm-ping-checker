void Event_Create() {
    HookEvent("player_disconnect", OnPlayerDisconnect, EventHookMode_Pre);
}

static Action OnPlayerDisconnect(Event event, const char[] name, bool dontBroadcast) {
    int userId = event.GetInt("userid");
    int client = GetClientOfUserId(userId);

    if (Client_IsKickEventDisabled(client)) {
        event.BroadcastDisabled = true;

        return Plugin_Changed;
    }

    return Plugin_Continue;
}
