namespace: demo
flow:
  name: DemoFlow
  workflow:
    - local_ping:
        do:
          io.cloudslang.base.utils.local_ping:
            - target_host: cmp-new-master1.ftc.hpeswlab.net
            - packet_count: '2'
        navigate:
          - SUCCESS: test
          - FAILURE: FAILURE
    - test:
        do:
          cloudslang.Demo-Project.Content.Library.demo.test:
            - text: test
            - test: test
        navigate:
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      local_ping:
        x: 226
        'y': 94
        navigate:
          1dc8b176-0ae2-8893-c29e-daec09b9068c:
            targetId: 7536fbf0-d1c6-9137-e2a7-15bd47fc47aa
            port: FAILURE
      test:
        x: 459
        'y': 78
        navigate:
          c79dca29-4c04-b233-1db8-f00d4281edc1:
            targetId: ffa5e57d-3c93-2b55-8016-6f9ca798cb8e
            port: SUCCESS
    results:
      FAILURE:
        7536fbf0-d1c6-9137-e2a7-15bd47fc47aa:
          x: 71
          'y': 245
      SUCCESS:
        ffa5e57d-3c93-2b55-8016-6f9ca798cb8e:
          x: 659
          'y': 288
