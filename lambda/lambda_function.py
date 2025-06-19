import boto3
import os

def lambda_handler(event, context):
    html_content = """
    <html>
      <head>
        <title>Hello Page</title>
        <style>
          body {
            background-color: darkorange;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
          }
          h1 {
            color: #333;
          }
        </style>
      </head>
      <body>
        <h1>Hello, World!</h1>
        <p>This is a simple UI served from AWS Lambda</p>
      </body>
    </html>
    """

    return {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'text/html'
        },
        'body': html_content
    }
