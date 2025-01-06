# Unhandled JSON Decoding and Generic Exception Handling in Dart

This example demonstrates a common error in Dart asynchronous programming: insufficient error handling during JSON decoding and the use of a generic catch-all exception handler.

The `fetchData` function fetches data from an API.  However, it fails to handle potential `FormatException` exceptions that can occur if `response.body` is not valid JSON. Additionally, the `catch (e)` block is too broad, losing the specific details of the error, making debugging difficult.

The solution demonstrates how to improve the code by handling JSON decoding exceptions explicitly and providing more specific error messages for better debugging.