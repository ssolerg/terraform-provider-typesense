module.exports = {
	extends: ["@commitlint/config-conventional"],
	ignores: [(commit) => commit.startsWith("chore(release)")],
	rules: {
		"body-max-line-length": [0],
	},
};
