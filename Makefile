.PHONY: up down

# Dockerコンテナを起動
start:
	docker-compose up -d

# Dockerコンテナを停止
stop:
	docker-compose down

# Dockerコンテナを再起動
restart:
	docker-compose down
	docker-compose up -d

# 初期化
delete:
	docker-compose down
	rm -rf elastic_data
	rm -rf files
	rm -rf output_files
	rm -rf grafana/provisioning

# ダウンロードフォルダのフォルダからファイルをコピーして解凍
# 使用方法: make copy-files FOLDER=outputs_12345
copy-files:
ifndef FOLDER
	$(error FOLDER is not set. Usage: make copy-files FOLDER=outputs_12345)
endif
	mkdir -p files
	@echo "Copying files from ~/Downloads/$(FOLDER) to files directory..."
	@if [ -d ~/Downloads/$(FOLDER) ]; then \
		cp -r ~/Downloads/$(FOLDER)/* files/; \
	else \
		echo "Folder ~/Downloads/$(FOLDER) not found"; \
		exit 1; \
	fi