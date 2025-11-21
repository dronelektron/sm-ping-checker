static int g_warnings[MAXPLAYERS + 1];
static bool g_kickEventDisabled[MAXPLAYERS + 1];

void Client_Reset(int client) {
    g_warnings[client] = 0;
    g_kickEventDisabled[client] = false;
}

void Client_AddWarnings(int client) {
    g_warnings[client]++;
}

int Client_GetWarnings(int client) {
    return g_warnings[client];
}

void Client_DisableKickEvent(int client) {
    g_kickEventDisabled[client] = true;
}

bool Client_IsKickEventDisabled(int client) {
    return g_kickEventDisabled[client];
}
