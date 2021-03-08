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
          com.microfocus.content.demo.test:
            - text: Mark
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
        x: 466
        'y': 152.109375
        navigate:
          79956e86-684b-e402-60dd-9e00ad631598:
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
