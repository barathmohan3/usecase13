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
            'Content-Type': 'text/html',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Headers': 'Authorization,Content-Type',
            'Access-Control-Allow-Methods': 'OPTIONS,GET,POST'
        },
        'body': html_content
    }
