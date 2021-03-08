namespace: demo
operation:
  name: TestPrint
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          test = print('hello')
          # code goes here
      # you can add additional helper methods below.
  results:
    - SUCCESS
