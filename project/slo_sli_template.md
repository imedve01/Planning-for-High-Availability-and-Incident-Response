| # API Service  |                                       |                                                                                                               |
|----------------|---------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Category       | SLI                                   | SLO                                                                                                           |
| -------------- | -----                                 | ------------------------------------------------------------------------------------------------------------- |
| Availability   | Secessfull requests, Failed requests  | 99%                                                                                                           |
| Latency        | API response time                     | 90% of requests below 100ms                                                                                   |
| Error Budget   | Number of errors (return code != 200) | Error budget is defined at 20%. This means that 20% of the requests can fail and still be within the budget   |
| Throughput     | Successful Requests per second        | 5 RPS indicates the application is functioning                                                                |
|                |                                       |                                                                                                               |
