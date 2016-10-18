import datetime, getpass
import sublime, sublime_plugin
class AddDateCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.run_command("insert_snippet", { "contents": "%s" %  datetime.date.today().strftime("%d.%m.%Y") } )

class AddTimeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.run_command("insert_snippet", { "contents": "%s" %  datetime.datetime.now().strftime("%H:%M") } )

class AddTodoCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.run_command("insert_snippet", { "contents": "// TODO: chbhamil[%s] " %  datetime.datetime.now().strftime("%d.%m.%Y") } )