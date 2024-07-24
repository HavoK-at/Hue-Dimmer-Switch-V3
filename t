[1mdiff --git a/hue_dimmer_switchV31.yaml b/hue_dimmer_switchV31.yaml[m
[1mindex 4ef7308..59ad4f3 100644[m
[1m--- a/hue_dimmer_switchV31.yaml[m
[1m+++ b/hue_dimmer_switchV31.yaml[m
[36m@@ -127,23 +127,23 @@[m [maction:[m
       cur_brightness: "{{ state_attr(light, 'brightness') | int(0) }}"[m
       is_turned_on: "{{ states(light) == 'on' }}"[m
   - choose:[m
[31m-      - conditions: "{{ command == 'on_press_release' and is_turned_on}}"[m
[32m+[m[32m      - conditions: "{{ command == 'on_press' and is_turned_on}}"[m
         sequence: !input "button_on_single_already_on"[m
[31m-      - conditions: "{{ command == 'on_press_release' }}"[m
[32m+[m[32m      - conditions: "{{ command == 'on_press' }}"[m
         sequence: !input "button_on_single"[m
       - conditions: "{{ command == 'on_double_press' }}"[m
         sequence: !input "button_on_double"[m
       - conditions: "{{ command == 'on_triple_press' }}"[m
         sequence: !input "button_on_triple"[m
[31m-      - conditions: "{{ command == 'on_hold_release' }}"[m
[32m+[m[32m      - conditions: "{{ command == 'on_hold' }}"[m
         sequence: !input "button_on_long"[m
[31m-      - conditions: "{{ command == 'off_press_release' }}"[m
[32m+[m[32m      - conditions: "{{ command == 'off_press' }}"[m
         sequence: !input "button_off_single"[m
       - conditions: "{{ command == 'off_double_press' }}"[m
         sequence: !input "button_off_double"[m
       - conditions: "{{ command == 'off_triple_press' }}"[m
         sequence: !input "button_off_triple"[m
[31m-      - conditions: "{{ command == 'off_hold_release' }}"[m
[32m+[m[32m      - conditions: "{{ command == 'off_hold' }}"[m
         sequence: !input "button_off_long"[m
       - conditions: "{{ command == 'up_press' }}"[m
         sequence:[m
