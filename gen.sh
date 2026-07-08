#!/usr/bin/env bash
# 從 training-la-api 的 openapi.yaml 重新產生此 Swift client。
# 真實來源是契約；本 repo 的 Sources/ 為產出物，勿手改。
#
# 用法：
#   ./gen.sh                                  # 預設讀 ../training_la_api/openapi.yaml
#   SPEC=/path/to/openapi.yaml ./gen.sh       # 指定契約位置
#
# 需求：openapi-generator 7.x（brew install openapi-generator）
set -euo pipefail

SPEC="${SPEC:-../training_la_api/openapi.yaml}"
GENERATOR_VERSION_MIN="7"

if ! command -v openapi-generator >/dev/null 2>&1; then
  echo "error: openapi-generator not found (brew install openapi-generator)" >&2
  exit 1
fi

ver="$(openapi-generator version)"
if [[ "${ver%%.*}" != "$GENERATOR_VERSION_MIN" ]]; then
  echo "warning: expected openapi-generator ${GENERATOR_VERSION_MIN}.x, got ${ver}" >&2
fi

if [[ ! -f "$SPEC" ]]; then
  echo "error: spec not found at $SPEC (set SPEC=/path/to/openapi.yaml)" >&2
  exit 1
fi

echo "generating from $SPEC (openapi-generator $ver)"
openapi-generator generate \
  -i "$SPEC" \
  -g swift6 \
  -o . \
  --additional-properties=projectName=TrainingLaClient,responseAs=AsyncAwait

echo "done. review 'git diff', then commit + tag a version."
