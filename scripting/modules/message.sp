void Message_HighPing(int client, int ping, int maxPing) {
    PrintToChatAll("%t%t", "Prefix", "Player kicked for high ping", client);

    if (Variable_Logging()) {
        LogMessage("\"%L\" is kicked for high ping (%d), maximum (%d)", client, ping, maxPing);
    }
}
