python -m PyInstaller --noconfirm \
--hidden-import PyQt5.QtWidgets \
--hidden-import pyqode \
--hidden-import pyqode.qt \
--hidden-import pyqode.qt.QtCore \
--hidden-import nodeeditor \
--hidden-import nodeeditor.node_socket \
--hidden-import SocketDefinition \
--hidden-import nodeeditor.node_socket.SocketDefinition \
--noconsole \
--onefile \
--icon=./apps/execution_node_editor/assets/icons/app.ico \
--name ExecutionNodeEditor \
./apps/execution_node_editor/main.py

chmod 777 ./dist/ExecutionNodeEditor

cp -a ./apps/execution_node_editor/execution_subsystem ./dist/execution_subsystem
cp -a ./apps/execution_node_editor/assets ./dist/assets