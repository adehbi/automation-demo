import ballerina/io;
import ballerina/time;
import ballerina/lang.runtime;

public function main() {
    io:println("Time logging started. Will run every 1 minute for 1 hour...");
    
    // Run for 60 iterations (60 minutes = 1 hour)
    int iterations = 60;
    int currentIteration = 1;
    
    while currentIteration <= iterations {
        time:Utc currentTime = time:utcNow();
        io:println("Iteration ", currentIteration, " - Current time: ", currentTime);
        
        // Sleep for 60 seconds (1 minute) if not the last iteration
        if currentIteration < iterations {
            runtime:sleep(60);
        }
        
        currentIteration = currentIteration + 1;
    }
    
    io:println("Time logging completed after 1 hour.");
}