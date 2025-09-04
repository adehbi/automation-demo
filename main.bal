import ballerina/io;
import ballerina/time;

public function main() {
    // Get current UTC time
    time:Utc currentTime = time:utcNow();

    // Convert to RFC 3339 string format (e.g., "2007-12-03T10:15:30.00Z")
    string timeString = time:utcToString(currentTime);

    // Extract time portion (HH:mm:ss) from the RFC 3339 format
    // Format: YYYY-MM-DDTHH:mm:ss.ssZ, so time starts at index 11
    string timePortion = timeString.substring(startIndex = 11, endIndex = 19);

    // Print current time with location
    io:println("Current time: ", timePortion, " (UTC)", "End");
}
